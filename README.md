# Roat

**Private, local-first desktop media studio, audio clean up, and multi-language AI transcription for Windows & macOS.**

Roat downloads online video, converts and cleans up your own media (including 200 GB+ cinema camera files), and transcribes speech. All of it happens on your computer. Nothing is uploaded, there are no accounts, and there is no telemetry.

**[⬇ Download the latest release](https://github.com/angelitojusay/roat/releases/latest)** · current version **v0.4.1**

## What's new

**v0.4.1**
- **Install Update Now** (Settings → About): Roat downloads the new version itself, checks it against the release's SHA-256 checksums, and installs it. On macOS it replaces Roat in Applications and restarts; on Windows it runs the installer. No browser download, so no "damaged" warning on updates.
- Mac builds are consistently ad-hoc signed.
- Windows 11: Roat can be pinned to the taskbar and Start, and the installer always adds a desktop shortcut.

**v0.4.0**
- **Transcript editor:** search, fix words inline, copy the full text, and re-export every format without transcribing again.
- **Trim / Cut** (lossless or frame-accurate) and **Merge Clips** in the Media Studio.
- **Remove Long Silences** in Clean Up Audio.
- Drop whole folders, filter the queue, live time-left estimates, and a notification when the queue finishes.

## Download

| Platform | File | Notes |
|---|---|---|
| Windows 10/11 (x64) | [Roat-0.4.1-win-x64.exe](https://github.com/angelitojusay/roat/releases/download/v0.4.1/Roat-0.4.1-win-x64.exe) | Installer (recommended) |
| Windows 10/11 (x64) | [Roat-0.4.1-portable.exe](https://github.com/angelitojusay/roat/releases/download/v0.4.1/Roat-0.4.1-portable.exe) | Portable, no install |
| macOS 13+, Apple Silicon (M1 and later) | [Roat-0.4.1-mac-arm64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.4.1/Roat-0.4.1-mac-arm64.dmg) | Disk image |
| macOS 13+, Intel | [Roat-0.4.1-mac-x64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.4.1/Roat-0.4.1-mac-x64.dmg) | Disk image |

SHA-256 checksums: [SHA256SUMS-windows.txt](https://github.com/angelitojusay/roat/releases/download/v0.4.1/SHA256SUMS-windows.txt) · [SHA256SUMS-macos.txt](https://github.com/angelitojusay/roat/releases/download/v0.4.1/SHA256SUMS-macos.txt). All releases are listed on the [Releases page](https://github.com/angelitojusay/roat/releases). Inside the app, **Settings → About → Check for Updates** tells you when a new version is out, and **Install Update Now** (from v0.4.1) downloads, verifies and installs it for you.

## What Roat does

### 1. Online Extractor
- Download video and audio from YouTube, Vimeo and the many other sites [yt-dlp](https://github.com/yt-dlp/yt-dlp) supports.
- Pick a resolution, trim a clip, and get subtitles, chapters, metadata and the thumbnail embedded.
- Browser-cookie pass-through for videos you can only watch while signed in.

Only download content you have the right to download.

### 2. Local Media Studio
- Convert video formats, compress to a target size or quality preset, extract audio, and convert audio.
- **Trim / Cut** without re-encoding (or frame-accurate), and **Merge Clips** that share a format.
- Built for **cinema camera files**: ProRes, DNxHR, 10-bit 4:2:2, and multi-track 24-bit audio in `.mov`/`.mxf`/`.mp4`. You choose which track or channel to use.
- **GPU video encoding:** NVIDIA NVENC on Windows and Apple VideoToolbox on macOS. If the GPU can't handle a file, Roat finishes the job on the CPU.
- **Clean Up Audio:** Voice Isolation (optionally with **DeepFilterNet3** neural noise removal), Podcast Enhance, and De-Hum & De-Hiss. Video is copied untouched. **Remove Long Silences** cuts dead air from both audio and video.

### 3. Transcribe
- Offline transcription with **whisper.cpp**, on the GPU (Apple Silicon Metal or NVIDIA CUDA) or the CPU.
- Three models: **Roat Swift** (fast), **Roat Studio** (high accuracy) and **Roat Cinema Master** (maximum precision). Each is rated for your computer, with a plain-English reason.
- Professional transcript layout with timestamps, exported as `.txt`, `.pdf`, `.docx` and `.srt`.
- **Transcript editor:** correct words, search, copy the full text, and save to re-export every file instantly.
- Optional translation into 10 languages, and subtitles added back into the video (soft tracks or burned in).

## First launch

**Windows.** Roat isn't code-signed yet, so SmartScreen may show "Windows protected your PC". Click **More info**, then **Run anyway**. To keep Roat on the taskbar, right-click its icon while it runs and choose **Pin to taskbar**.

**macOS.** Drag Roat to Applications and open it. Roat isn't notarized yet, so if macOS says **"Roat is damaged and can't be opened"**, run this in Terminal; it fixes it immediately, then open Roat normally:

```bash
xattr -cr /Applications/Roat.app
```

The message comes from the browser's download quarantine, not from a broken file. Later updates installed with **Settings → About → Install Update Now** don't go through the browser, so they open without it.

The first time you use a workspace, Roat offers to download the tools it needs (yt-dlp, ffmpeg, whisper models and so on) from their official releases. It checks each file's SHA-256 before using it.

## Verify your download

macOS (in the folder with the downloads):

```bash
shasum -a 256 -c SHA256SUMS-macos.txt --ignore-missing
```

Windows (PowerShell), then compare with `SHA256SUMS-windows.txt`:

```powershell
Get-FileHash .\Roat-0.4.1-win-x64.exe -Algorithm SHA256
```

## Privacy

- No telemetry, analytics, ads or accounts. Your media never leaves your computer.
- **Translation is the one exception, and only when you ask for it:** the transcript **text** (no audio, file names or paths) is sent to a translation service. The Transcribe view says so next to the language choices.
- Update checks contact GitHub only when you click **Check for Updates**, and updates download only when you click **Install Update Now**.
- Settings → **App Data & Uninstall** shows what Roat stores and removes it, or uninstalls Roat completely.

## Support Roat

Roat is free, with no ads, accounts or locked features. If it saves you time, you can support development at **[buymeacoffee.com/roat](https://buymeacoffee.com/roat)** (also the **Sponsor** button at the top of this page). Thank you!

## Credits

Roat stands on excellent open-source work: [yt-dlp](https://github.com/yt-dlp/yt-dlp), [FFmpeg](https://ffmpeg.org), [whisper.cpp](https://github.com/ggml-org/whisper.cpp), [DeepFilterNet](https://github.com/Rikorose/DeepFilterNet), [RNNoise](https://github.com/xiph/rnnoise), [Deno](https://deno.com) and [Electron](https://www.electronjs.org). The tools are downloaded from their official releases on first use. Full licences are in the app under **Settings → About → View Open Source Licenses**.

Roat is provided under its End-User License Agreement, shown when you install it and in **Settings → About**.
