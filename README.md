# Roat

**Private, local-first desktop media studio, audio clean up, and multi-language AI transcription for Windows & macOS.**

Roat downloads online video, converts and cleans up your own media (including 200 GB+ cinema camera files), and transcribes speech. All of it happens on your computer. Nothing is uploaded, there are no accounts, and there is no telemetry.

**[⬇ Download the latest release](https://github.com/angelitojusay/roat/releases/latest)** · current version **v0.7.0**

## What's new

**v0.7.0**
- **Watch folders.** In **Settings → Watch Folders**, point Roat at up to five folders and choose what happens to new files: **Convert Video**, **Clean Up Audio** or **Transcribe**, with default options or one of your saved presets. Roat waits until a file has finished copying, queues it once (never again after a restart), leaves files that were already there alone, and puts the results in a **Roat Output** subfolder.
- **Fit a video to a file size.** Convert Video's **Target File Size** takes **10 / 25 / 50 / 100 MB** or any size from 2 to 2000 MB for Discord, Slack and email limits. Roat keeps 5 % in reserve so the file lands just under, picks the audio bitrate for you, and drops to 720p or 480p when the budget is tight. **Ctrl/Cmd+K → Fit Video to 25 MB** sets it up in one step.
- **Corner logo watermark.** Add a PNG or JPG logo in any corner of a converted video at **8 %**, **14 %** or **22 %** of the width and 25–100 % opacity. Transparent PNGs stay transparent.
- **Contact sheets and best thumbnails.** One image of 16 (4 × 4) or 12 (3 × 4) evenly spaced, time-stamped frames, or the single most representative frame, as JPG or PNG. Even huge files are sampled in seconds.
- **Transcript mute, 1 kHz bleep and filler sweep.** Each transcript line can be kept, cut, muted or bleeped (**Delete**, **M**, **B**), and **Sweep Fillers / Keywords** marks every "um", "uh" or chosen word at once. **Export Edited Media** silences muted lines and covers bleeped ones with a broadcast-style tone; with nothing cut, the video is copied untouched.
- **Audio stems & channels.** **Stems & Channels** saves each audio track as its own file, splits a two-mic stereo track into left and right files, or centres a one-sided recording into both ears.
- **EBU R128 loudness inspector.** **Inspect Loudness** on any file or finished job shows integrated loudness, loudness range and true peak, and whether it's **Podcast Ready (−16 LUFS)**, **Streaming Ready (−14 LUFS)**, too quiet, too loud or at risk of clipping.
- **Smoother macOS updates.** **Install Update Now** no longer fails when the previous version's files are still in use, and shows the real reason if anything else goes wrong.

**v0.6.0**
- **Smart Audio Ducking & Voice/Music Mixer.** **Mix Music** lays a background track under a voiceover or video at −24 to −6 dB. Whenever someone speaks the music dips by exactly **Light −6 dB**, **Standard −12 dB** or **Deep −18 dB** (or stays put as a static mix), then comes back in the pauses. Short tracks loop and fade out; the picture is copied untouched.
- **9:16 & 1:1 Social Reframe.** Convert Video and Burn Captions turn a 16:9 clip into **9:16 Vertical (1080×1920)**, **1:1 Square** or **16:9**, with a **Blurred Backdrop**, a **Center Crop** or **Black Bars**. Burned captions are drawn after the reframe, so they stay crisp inside the new frame. **Ctrl/Cmd+K → Reframe for Shorts** sets it up in one step.
- **Podcast Audiogram Video Generator.** Turn an audio file into a shareable MP4 with an animated waveform: 9:16, 1:1 or 16:9, in **Studio Indigo**, **Amber Gold**, **Emerald Mint** or **Monochrome**, on a solid colour or your own background image, with the finished transcript burned in as captions if you like.
- **Transcript strike-to-cut.** Cut lines in the transcript editor (✂ or **Delete**), then **Export Edited Media** renders the recording without them, plus a re-timed `.srt` and `.txt`.
- **Speaker labels.** Tag lines with speakers, **Auto-Group Speaker Turns** at pauses, and rename **Speaker 1** to **Alex** everywhere at once. Exports carry the names.
- **Batches of up to 50 files** in Media Studio and Transcribe: drop a folder, check the batch bar, and run them all with one click.

**v0.5.0**
- **Media Studio first.** Roat opens on Media Studio, and the sidebar reads **Media Studio → Transcribe → Clean Up Audio → Web Import**. *Online Extractor* is now called **Web Import**.
- **Waveform Trim scrubber.** Trim / Cut draws the waveform with draggable `[` `]` handles, a playhead and a mini preview. **Space** plays, **I** and **O** set the start and end.
- **Hear any transcript line.** In the transcript editor, ▶ plays just that line of the original recording.
- **Send To… and auto-chaining.** Send a finished file straight to Transcribe, Clean Up Audio, Trim / Cut or Convert, or have downloads go to Transcribe or Clean Up Audio automatically, with **Transcribe after cleaning** for download → clean-up → transcript in one go.
- **Burn Captions** from a finished transcript (your edits included), in **Cinema Classic**, **High-Contrast Yellow** or **Boxed Background**, at the bottom, middle or top, in three sizes, with a live preview. **Short-burst captions** turn long lines into punchy 3–5 word captions.
- **Split Chapters.** Cut a file into numbered parts (`01 - Intro.mp4`, …) from its own chapters or from pasted YouTube-style timestamps, losslessly.
- **Clip-range downloads** in Web Import: grab one minute of a long stream without downloading all of it.
- **Command palette** (**Ctrl+K**, or **Cmd+K** on Mac) and **custom presets** you can save for Convert, Clean Up Audio and Transcribe.

## Download

### Windows

| Platform | File | Notes |
|---|---|---|
| Windows 10/11 (x64) | [Roat-0.7.0-win-x64.exe](https://github.com/angelitojusay/roat/releases/download/v0.7.0/Roat-0.7.0-win-x64.exe) | Installer (recommended) |
| Windows 10/11 (x64) | [Roat-0.7.0-portable.exe](https://github.com/angelitojusay/roat/releases/download/v0.7.0/Roat-0.7.0-portable.exe) | Portable, no install |

### macOS

**Option A — 1-command install (recommended, skips Gatekeeper).** Open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/angelitojusay/roat/main/install.sh | bash
```

The [script](install.sh) downloads the latest release for your Mac (Apple Silicon or Intel), verifies it against `SHA256SUMS-macos.txt` and stops if it doesn't match, quits Roat if it is running, installs `Roat.app` into Applications, clears the download quarantine and opens Roat. Nothing is downloaded through the browser, so macOS shows no "damaged" warning.

**Option B — manual DMG download.**

| Platform | File | Notes |
|---|---|---|
| macOS 13+, Apple Silicon (M1 and later) | [Roat-0.7.0-mac-arm64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.7.0/Roat-0.7.0-mac-arm64.dmg) | Disk image |
| macOS 13+, Intel | [Roat-0.7.0-mac-x64.dmg](https://github.com/angelitojusay/roat/releases/download/v0.7.0/Roat-0.7.0-mac-x64.dmg) | Disk image |

Drag Roat to Applications and open it. Roat isn't notarized yet, so if macOS says **"Roat is damaged and can't be opened"**, run this in Terminal; it fixes it immediately, then open Roat normally:

```bash
xattr -cr /Applications/Roat.app
```

The message comes from the browser's download quarantine, not from a broken file.

SHA-256 checksums: [SHA256SUMS-windows.txt](https://github.com/angelitojusay/roat/releases/download/v0.7.0/SHA256SUMS-windows.txt) · [SHA256SUMS-macos.txt](https://github.com/angelitojusay/roat/releases/download/v0.7.0/SHA256SUMS-macos.txt). All releases are listed on the [Releases page](https://github.com/angelitojusay/roat/releases). Inside the app, **Settings → About → Check for Updates** tells you when a new version is out, and **Install Update Now** downloads, verifies and installs it for you.

## What Roat does

### 1. Media Studio
- Convert video formats (optionally to a **target file size** and with a **corner logo watermark**), compress to a target size or quality preset, extract audio, and convert audio.
- **Trim / Cut** on a waveform with draggable handles and a preview, without re-encoding (or frame-accurate). **Merge Clips** that share a format. **Split Chapters** into numbered files from the file's chapters or pasted timestamps.
- **Burn Captions** from a finished transcript, in three caption styles with placement, size and short-burst options.
- **Social reframe** to 9:16, 1:1 or 16:9 (blurred backdrop, centre crop or black bars) in Convert and Burn Captions.
- **Mix Music** under a voice with automatic ducking, and **Audiogram** waveform videos for podcasts.
- **Contact Sheet** grids of time-stamped frames, or the best thumbnail, as JPG or PNG.
- **Stems & Channels:** every audio track as its own file, stereo split into left and right, or a one-sided recording centred. **Inspect Loudness** measures EBU R128 loudness and true peak with a plain verdict.
- **Batches:** up to 50 files at once, one job each.
- Built for **cinema camera files**: ProRes, DNxHR, 10-bit 4:2:2, and multi-track 24-bit audio in `.mov`/`.mxf`/`.mp4`. You choose which track or channel to use.
- **GPU video encoding:** NVIDIA NVENC on Windows and Apple VideoToolbox on macOS. If the GPU can't handle a file, Roat finishes the job on the CPU.

### 2. Transcribe
- Offline transcription with **whisper.cpp**, on the GPU (Apple Silicon Metal or NVIDIA CUDA) or the CPU.
- Three models: **Roat Swift** (fast), **Roat Studio** (high accuracy) and **Roat Cinema Master** (maximum precision). Each is rated for your computer, with a plain-English reason.
- Professional transcript layout with timestamps, exported as `.txt`, `.pdf`, `.docx` and `.srt`.
- **Transcript editor:** correct words, search, play any line from the recording, copy the full text, and save to re-export every file instantly (optionally with short-burst SRT captions).
- **Edit by text:** cut, mute or bleep lines (or sweep away every filler word) and export the edited media; label speakers and rename them everywhere at once.
- Optional translation into 10 languages, and subtitles added back into the video (soft tracks or burned in, in your caption style).

### 3. Clean Up Audio
- Voice Isolation (optionally with **DeepFilterNet3** neural noise removal), Podcast Enhance, and De-Hum & De-Hiss. Video is copied untouched.
- **Remove Long Silences** cuts dead air from both audio and video.
- **Transcribe after cleaning** queues a transcript of the cleaned file automatically.

### 4. Web Import
- Download video and audio from YouTube, Vimeo and the many other sites [yt-dlp](https://github.com/yt-dlp/yt-dlp) supports.
- Pick a resolution, download only a **clip range**, and get subtitles, chapters, metadata and the thumbnail embedded.
- Browser-cookie pass-through for videos you can only watch while signed in.
- Optionally send each finished download straight to Transcribe or Clean Up Audio.

Only download content you have the right to download.

### Getting around
- **Send To…** on any finished job hands the file to another workspace, already filled in.
- **Command palette:** **Ctrl+K** (or **Cmd+K**) jumps to any workspace or tool, clears finished jobs, opens the output folder, or opens a transcript by name.
- **Custom presets:** save your Convert, Clean Up Audio and Transcribe settings under a name and apply them with one click.
- **Watch folders:** new files dropped into a chosen folder are converted, cleaned up or transcribed automatically, with your presets.

## First launch

**Windows.** Roat isn't code-signed yet, so SmartScreen may show "Windows protected your PC". Click **More info**, then **Run anyway**. To keep Roat on the taskbar, right-click its icon while it runs and choose **Pin to taskbar**.

**macOS.** With the 1-command install, Roat opens right away. After a manual DMG download, use the `xattr -cr /Applications/Roat.app` fix above if macOS calls Roat "damaged". Later updates installed with **Settings → About → Install Update Now** don't go through the browser, so they open without it.

The first time you use a workspace, Roat offers to download the tools it needs (yt-dlp, ffmpeg, whisper models and so on) from their official releases. It checks each file's SHA-256 before using it.

## Verify your download

macOS (in the folder with the downloads):

```bash
shasum -a 256 -c SHA256SUMS-macos.txt --ignore-missing
```

Windows (PowerShell), then compare with `SHA256SUMS-windows.txt`:

```powershell
Get-FileHash .\Roat-0.7.0-win-x64.exe -Algorithm SHA256
```

## Privacy

- No telemetry, analytics, ads or accounts. Your media never leaves your computer.
- **Translation is the one exception, and only when you ask for it:** the transcript **text** (no audio, file names or paths) is sent to a translation service. The Transcribe view says so next to the language choices.
- Update checks contact GitHub only when you click **Check for Updates**, and updates download only when you click **Install Update Now**.
- Watch folders read only the folders you choose, only while Roat is running.
- Settings → **App Data & Uninstall** shows what Roat stores and removes it, or uninstalls Roat completely.

## Support Roat

Roat is free, with no ads, accounts or locked features. If it saves you time, you can support development at **[buymeacoffee.com/roat](https://buymeacoffee.com/roat)** (also the **Sponsor** button at the top of this page). Thank you!

## Credits

Roat stands on excellent open-source work: [yt-dlp](https://github.com/yt-dlp/yt-dlp), [FFmpeg](https://ffmpeg.org), [whisper.cpp](https://github.com/ggml-org/whisper.cpp), [DeepFilterNet](https://github.com/Rikorose/DeepFilterNet), [RNNoise](https://github.com/xiph/rnnoise), [Deno](https://deno.com) and [Electron](https://www.electronjs.org). The tools are downloaded from their official releases on first use. Full licences are in the app under **Settings → About → View Open Source Licenses**.

Roat is provided under its End-User License Agreement, shown when you install it and in **Settings → About**.
