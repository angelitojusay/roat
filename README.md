# Roat

**Private, local-first desktop media studio, audio clean up, and multi-language AI transcription for Windows & macOS.**

Roat downloads online video, converts and cleans up your own media (including 200 GB+ cinema camera files), and transcribes speech. All of it happens on your computer. Nothing is uploaded, there are no accounts, and there is no telemetry.

**[⬇ Download the latest release](https://github.com/angelitojusay/roat/releases/latest)** · current version **v0.3.0**

## Download

| Platform | File | Notes |
|---|---|---|
| Windows 10/11 (x64) | [Roat-0.3.0-win-x64.exe](https://github.com/angelitojusay/roat/releases/download/v0.3.0/Roat-0.3.0-win-x64.exe) | Installer (recommended) |
| Windows 10/11 (x64) | [Roat-0.3.0-portable.exe](https://github.com/angelitojusay/roat/releases/download/v0.3.0/Roat-0.3.0-portable.exe) | Portable, no install |
| macOS 13+, Apple Silicon (M1 and later) | [Roat-0.3.0-mac-arm64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.3.0/Roat-0.3.0-mac-arm64.dmg) | Disk image |
| macOS 13+, Intel | [Roat-0.3.0-mac-x64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.3.0/Roat-0.3.0-mac-x64.dmg) | Disk image |

SHA-256 checksums: [SHA256SUMS-windows.txt](https://github.com/angelitojusay/roat/releases/download/v0.3.0/SHA256SUMS-windows.txt) · [SHA256SUMS-macos.txt](https://github.com/angelitojusay/roat/releases/download/v0.3.0/SHA256SUMS-macos.txt). All releases are listed on the [Releases page](https://github.com/angelitojusay/roat/releases). Inside the app, **Settings → About → Check for Updates** tells you when a new version is out.

## What Roat does

### 1. Online Extractor
- Download video and audio from YouTube, Vimeo and the many other sites [yt-dlp](https://github.com/yt-dlp/yt-dlp) supports.
- Pick a resolution, trim a clip, and get subtitles, chapters, metadata and the thumbnail embedded.
- Browser-cookie pass-through for videos you can only watch while signed in.

Only download content you have the right to download.

### 2. Local Media Studio
- Convert video formats, compress to a target size or quality preset, extract audio, and convert audio.
- Built for **cinema camera files**: ProRes, DNxHR, 10-bit 4:2:2, and multi-track 24-bit audio in `.mov`/`.mxf`/`.mp4`. You choose which track or channel to use.
- **GPU video encoding:** NVIDIA NVENC on Windows and Apple VideoToolbox on macOS. If the GPU can't handle a file, Roat finishes the job on the CPU.
- **Clean Up Audio:** Voice Isolation (optionally with **DeepFilterNet3** neural noise removal), Podcast Enhance, and De-Hum & De-Hiss. Video is copied untouched.

### 3. Transcribe
- Offline transcription with **whisper.cpp**, on the GPU (Apple Silicon Metal or NVIDIA CUDA) or the CPU.
- Three models: **Roat Swift** (fast), **Roat Studio** (high accuracy) and **Roat Cinema Master** (maximum precision). Each is rated for your computer, with a plain-English reason.
- Professional transcript layout with timestamps, exported as `.txt`, `.pdf`, `.docx` and `.srt`.
- Optional translation into 10 languages, and subtitles added back into the video (soft tracks or burned in).

## First launch

**Windows.** Roat isn't code-signed yet, so SmartScreen may show "Windows protected your PC". Click **More info**, then **Run anyway**.

**macOS.** Roat isn't notarized yet, so macOS may say the app "is damaged" or "can't be opened". Drag Roat to Applications, then run this once in Terminal and open Roat normally:

```bash
xattr -cr /Applications/Roat.app
```

The first time you use a workspace, Roat offers to download the tools it needs (yt-dlp, ffmpeg, whisper models and so on) from their official releases. It checks each file's SHA-256 before using it.

## Verify your download

macOS (in the folder with the downloads):

```bash
shasum -a 256 -c SHA256SUMS-macos.txt --ignore-missing
```

Windows (PowerShell), then compare with `SHA256SUMS-windows.txt`:

```powershell
Get-FileHash .\Roat-0.3.0-win-x64.exe -Algorithm SHA256
```

## Privacy

- No telemetry, analytics, ads or accounts. Your media never leaves your computer.
- **Translation is the one exception, and only when you ask for it:** the transcript **text** (no audio, file names or paths) is sent to a translation service. The Transcribe view says so next to the language choices.
- Update checks contact GitHub only when you click **Check for Updates**.
- Settings → **App Data & Uninstall** shows what Roat stores and removes it, or uninstalls Roat completely.

## Support Roat

Roat is free, with no ads, accounts or locked features. If it saves you time, you can support development at **[buymeacoffee.com/roat](https://buymeacoffee.com/roat)** (also the **Sponsor** button at the top of this page). Thank you!

## Credits

Roat stands on excellent open-source work: [yt-dlp](https://github.com/yt-dlp/yt-dlp), [FFmpeg](https://ffmpeg.org), [whisper.cpp](https://github.com/ggml-org/whisper.cpp), [DeepFilterNet](https://github.com/Rikorose/DeepFilterNet), [RNNoise](https://github.com/xiph/rnnoise), [Deno](https://deno.com) and [Electron](https://www.electronjs.org). The tools are downloaded from their official releases on first use. Full licences are in the app under **Settings → About → View Open Source Licenses**.

Roat is provided under its End-User License Agreement, shown when you install it and in **Settings → About**.
