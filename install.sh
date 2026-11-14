#!/usr/bin/env bash
# Roat one-step installer for macOS.
#
#   curl -fsSL https://raw.githubusercontent.com/angelitojusay/roat/main/install.sh | bash
#
# Downloads the latest Roat release for this Mac (Apple Silicon or Intel), verifies it against the
# release's SHA256SUMS-macos.txt, copies Roat.app into /Applications, clears the download quarantine
# and opens Roat. Nothing else is sent or installed. Set ROAT_INSTALL_DIR to install elsewhere
# (for example "$HOME/Applications").
#
# Everything runs inside main(), called on the last line, so a partly downloaded script does nothing.

set -euo pipefail

REPO="angelitojusay/roat"
API_URL="https://api.github.com/repos/${REPO}/releases/latest"
WORK=""
MNT=""

say() { printf '\033[1m==>\033[0m %s\n' "$*"; }
die() {
  printf '\033[31mError:\033[0m %s\n' "$*" >&2
  exit 1
}

# Runs on every exit: detach the disk image if it is still mounted, then delete the downloads.
cleanup() {
  if [ -n "$MNT" ] && mount | grep -q " on ${MNT} "; then
    hdiutil detach "$MNT" -quiet </dev/null >/dev/null 2>&1 || hdiutil detach "$MNT" -force -quiet </dev/null >/dev/null 2>&1 || true
  fi
  if [ -n "$WORK" ]; then rm -rf "$WORK"; fi
}

main() {
  [ "$(uname -s)" = "Darwin" ] || die "This installer is for macOS. On Windows, download the installer from https://github.com/${REPO}/releases/latest"

  # Apple Silicon reports x86_64 when the shell itself runs under Rosetta, so ask the hardware too.
  local arch
  case "$(uname -m)" in
    arm64) arch="arm64" ;;
    x86_64)
      if [ "$(sysctl -n hw.optional.arm64 2>/dev/null || echo 0)" = "1" ]; then arch="arm64"; else arch="x64"; fi
      ;;
    *) die "Unsupported CPU architecture: $(uname -m)" ;;
  esac

  local apps_dir="${ROAT_INSTALL_DIR:-/Applications}"
  local app="${apps_dir}/Roat.app"
  WORK="$(mktemp -d "${TMPDIR:-/tmp}/roat-install.XXXXXX")"
  MNT="${WORK}/mnt"
  trap cleanup EXIT
  trap 'exit 130' INT TERM

  say "Looking up the latest Roat release"
  local release tag
  release="$(curl -fsSL -H 'Accept: application/vnd.github+json' -H 'User-Agent: roat-install' "$API_URL" </dev/null)" ||
    die "Couldn't reach GitHub. Check your connection and try again."
  tag="$(printf '%s' "$release" | grep -o '"tag_name": *"[^"]*"' | head -n 1 | sed 's/.*"\([^"]*\)"$/\1/')"
  [ -n "$tag" ] || die "Couldn't read the latest release from GitHub."

  local dmg_url sums_url dmg
  dmg_url="$(printf '%s' "$release" | grep -o '"browser_download_url": *"[^"]*-mac-'"${arch}"'\.dmg"' | head -n 1 | sed 's/.*"\(https[^"]*\)"$/\1/')"
  sums_url="$(printf '%s' "$release" | grep -o '"browser_download_url": *"[^"]*/SHA256SUMS-macos\.txt"' | head -n 1 | sed 's/.*"\(https[^"]*\)"$/\1/')"
  [ -n "$dmg_url" ] || die "Release ${tag} has no macOS ${arch} disk image."
  [ -n "$sums_url" ] || die "Release ${tag} has no SHA256SUMS-macos.txt; refusing to install unverified files."
  dmg="${dmg_url##*/}"

  say "Downloading ${dmg} (${tag})"
  curl -fL --progress-bar -o "${WORK}/${dmg}" "$dmg_url" </dev/null || die "Download failed."
  curl -fsSL -o "${WORK}/SHA256SUMS-macos.txt" "$sums_url" </dev/null || die "Couldn't download SHA256SUMS-macos.txt."

  say "Verifying SHA-256"
  grep -q "  ${dmg}\$" "${WORK}/SHA256SUMS-macos.txt" || die "SHA256SUMS-macos.txt has no entry for ${dmg}."
  (cd "$WORK" && shasum -a 256 -c SHA256SUMS-macos.txt --ignore-missing </dev/null) ||
    die "Checksum verification failed. Nothing was installed."

  if pgrep -x Roat >/dev/null 2>&1; then
    say "Quitting the running Roat"
    killall Roat 2>/dev/null || true
    local i
    for i in 1 2 3 4 5 6 7 8 9 10; do
      pgrep -x Roat >/dev/null 2>&1 || break
      sleep 0.5
    done
  fi

  say "Opening the disk image"
  mkdir -p "$MNT"
  # The disk image shows Roat's licence agreement: print it through cat and answer "Y", which is
  # what the installer window's Agree button does.
  printf 'Y\n' | PAGER=/bin/cat hdiutil attach -nobrowse -noautoopen -readonly -mountpoint "$MNT" "${WORK}/${dmg}" >/dev/null ||
    die "Couldn't open the disk image."
  [ -d "${MNT}/Roat.app" ] || die "The disk image doesn't contain Roat.app."

  local sudo=""
  if [ ! -w "$apps_dir" ] || { [ -e "$app" ] && [ ! -w "$app" ]; }; then
    say "${apps_dir} needs administrator rights; macOS will ask for your password"
    sudo="sudo"
  fi

  say "Installing Roat into ${apps_dir}"
  $sudo rm -rf "${app}.new"
  $sudo ditto "${MNT}/Roat.app" "${app}.new" </dev/null || die "Couldn't copy Roat.app into ${apps_dir}."
  if [ -e "$app" ]; then
    $sudo rm -rf "${app}.old"
    $sudo mv "$app" "${app}.old"
  fi
  if ! $sudo mv "${app}.new" "$app"; then
    [ -e "${app}.old" ] && $sudo mv "${app}.old" "$app"
    die "Couldn't move Roat.app into place; your previous version was kept."
  fi
  $sudo rm -rf "${app}.old"
  $sudo xattr -cr "$app"

  hdiutil detach "$MNT" -quiet </dev/null >/dev/null 2>&1 || hdiutil detach "$MNT" -force -quiet </dev/null >/dev/null 2>&1 || true

  say "Roat ${tag#v} is installed. Opening it now"
  open "$app" </dev/null
}

main "$@"
