https://github.com/user-attachments/assets/92e8cd15-bb27-4dbf-9bf7-a7e2105e4bf7

# Roat

**Private, local-first desktop media studio, audio clean up, multi-language AI transcription and AI voiceover for Windows & macOS.**

Roat downloads online video, converts and cleans up your own media (including 200 GB+ cinema camera files), transcribes speech, and turns scripts and subtitles into natural voiceovers. All of it happens on your computer. Nothing is uploaded, there are no accounts, and there is no telemetry.

**[⬇ Download the latest release](https://github.com/angelitojusay/roat/releases/latest)** · current version **v1.0.1**

## What's new

### v1.0.1
- **Twelve voices for Voiceover & Dubbing.** Choose from twelve of Kokoro's best-rated English voices: **Heart** (the default), **Bella**, **Kore**, **Aoede**, **Sarah** and **Nicole**; **Fenrir**, **Puck** and **Michael**; and the British **Emma**, **George** and **Fable**.
- **Clean broadcast endings.** Audio-only voiceovers now end with a soft fade and half a second of silence, so the last word never sounds cut off. Dubbed lines still start exactly on their cues.
- **Says it like an editor.** **LUTs** is read as one word; **DNxHR**, **DNxHD** and **FCPXML** letter by letter; **NVENC**, **macOS** and **dBFS** the way editors say them.

### 🎉 v1.0.0: the flagship release

**AI voiceover and dubbing, made on your computer (Kokoro-82M)**
- **Local text-to-speech.** The new **Voiceover & Dubbing** mode in Media Studio reads text in natural voices with **Kokoro-82M**, an open (Apache-2.0) speech model that runs entirely on your computer: no account, no upload, no Python. Download it once (about 375 MB, checked with SHA-256) from **Settings → AI Models** or the banner in the mode, and cancel or remove it any time. Seven English voices (Heart, Bella, Nicole, Adam, Michael, and the British Emma and George) at **0.75× to 1.50×** speed.
- **Scripts and two-voice dialogue.** Write `[Host]:` and `[Guest]:` (any names) to switch voices line by line, give each speaker their own voice, and add `[pause 0.5s]` where a breath belongs.
- **Timed dubbing from transcripts and subtitles.** Dub a video from a finished transcript (its original lines or the **English translation**) or any **SRT / VTT** file: every line starts at its own timestamp, and a line that would run into the next is sped up slightly (at most 1.30×) instead of overlapping.
- **Mastered and mixed for you.** The voice gets a broadcast EQ and is mastered to **−16 LUFS**, then saved as **WAV, M4A or MP3**, swapped in as the video's new audio, or mixed over the original, which **ducks 12 dB** whenever the voice speaks. The picture is copied untouched.

**Timecode, LTC and waveform auto-sync**
- **SMPTE LTC timecode ("Tentacle Sync mode").** **Timecode & Audio Sync → LTC → Timecode** reads the timecode signal a Tentacle Sync, Deity or similar box records on one camera channel and writes it as the file's real timecode (picture copied), optionally replacing that channel with the scratch mic.
- **Waveform auto-sync ("PluralEyes mode").** **Replace Camera Audio** lines up a lav mic or field recorder with the camera by timecode, Broadcast WAV time, LTC or by matching the two waveforms, then swaps in the clean audio with the picture copied. Weak matches are never applied.
- **Multi-cam auto-sync.** **Multi-Cam / PiP → Auto-Sync Clips** aligns the second camera to the first before building the picture-in-picture or split screen; a **TC** badge marks files that carry timecode.

**System Health diagnostics**
- **Settings → System Health** shows Roat's version, your OS, the installed tools, the active H.264 / HEVC / AV1 / ProRes encoders and which AI models are installed. **Copy Diagnostic Summary for GitHub Issue** copies it as Markdown, with no file paths, user name or computer name; nothing is sent anywhere.
- **Find it by asking:** try *"text to speech"*, *"dub video"*, *"read subtitles"*, *"tentacle sync"*, *"pluraleyes"* or *"system health"* in **Ctrl/Cmd+K**.

**v0.9.0**
- **Apple ProRes and Avid DNxHR masters and proxies.** Convert Video → MOV writes **ProRes** (422 Proxy, LT, 422, HQ, 4444) or **DNxHR** (LB, SQ, HQX) with every audio track as uncompressed **24-bit 48 kHz PCM**: smooth-scrubbing files for DaVinci Resolve, Final Cut Pro and Premiere, with a size-per-minute hint before you start.
- **Variable to constant frame rate, HDR to SDR and .cube LUTs.** Lock phone and screen recordings (marked **VFR**) to a constant frame rate so they stay in sync in editors, map iPhone and camera **HDR** to standard BT.709 so it no longer looks grey or orange, and grade with a `.cube` LUT at 25–100 %.
- **Auto-crop black bars.** **Auto-Detect Black Bars** finds letterbox or pillarbox bars in seconds and crops each file to its real picture.
- **Chapters, tags, cover art and a privacy scrub.** **Chapters & Tags** writes YouTube-style chapters (or your transcript's 🚩 flags), title, artist, album, year and a cover image into a copy of the file without re-encoding, and **Strip Private Camera / GPS / EXIF Metadata** removes location, camera serials and dates. Trim, Split and Scenes call their fast mode **Lossless Instant Cut**.
- **Translate to English and bilingual subtitles.** Transcribe's new **Translation Mode** can **Translate to English** or keep both languages on every line (**Bilingual Dual-Track**). Edit the original and the English side by side in the transcript editor, **Export Subtitles** as original, English or two-line bilingual **SRT / VTT**, and burn **bilingual captions** into the video. Roat Swift and Cinema Master translate offline.
- **Add any subtitle file.** **Subtitle File** adds an `.srt`, `.vtt` or `.ass` to a video as a **toggleable track** in about a second (no re-encode), or **burns it in** with Roat's caption styles.
- **Picture-in-picture and split screen.** **Multi-Cam / PiP** puts a webcam or guest camera in any corner (with an optional border), **side by side** as a 1920×1080 interview, or **stacked** as a 1080×1920 Short, with either recording's audio or both mixed.
- **Broadcast voice EQ and de-esser.** Clean Up Audio's new **Voice Tone / EQ** adds **Warm Broadcast**, **Crisp Presence**, a **De-Esser** for harsh "s" sounds and an **80 Hz Rumble Cut**.
- **Build your own workflows.** **Workflows → New Workflow** chains 2 or 3 steps of your choice (dead-air removal, black-end trimming, clean-up, convert, transcribe, 9:16 captions); watch folders can run them too. **Settings → Presets & Workflows** exports your presets and workflows as one `.json` to import on your other computer.

**v0.8.0**
- **Multi-step workflow chains.** The new **Workflows** mode in Media Studio runs a whole recipe from one click, each finished step feeding the next by itself: **Podcast Master & Transcript** (voice isolation at −16 LUFS → transcript with show notes), **Short-Form Clips Factory** (clean-up → transcript → 9:16 blurred-backdrop video with burned captions) and **Clean Cut Interview** (dead air removed → transcript). Queue cards show **Step 1/3**; a failed step stops the chain and **Retry** continues it. Watch folders can run a workflow on every new file.
- **GIF and animated WebP loops.** **GIF / WebP Loop** turns a clip into a crisp loop for READMEs, pull requests and docs: 10, 15 or 24 fps, 360–800 px wide, 0.5× to 2× speed and an optional trim. GIFs get a palette built from the clip itself with fine dithering, so gradients don't band; WebP loops are a fraction of the size.
- **AV1 encoding.** Convert Video encodes **AV1** in MP4, MKV and WebM, including **Target File Size**. Roat uses your NVIDIA, Intel or AMD GPU's AV1 encoder when a quick test shows it works, and otherwise the fast **SVT-AV1** CPU encoder.
- **5-second sample preview.** **Render 5s Preview** in Convert, Compress, Clean Up Audio and Privacy Blur renders 5 seconds from the middle of the file with exactly your settings, so you can check a watermark, a blur box, a reframe, the clean-up or AV1 quality before a long encode.
- **NLE timeline export.** From a transcript, **Export Timeline** writes your text edit as **FCPXML 1.9** (Final Cut Pro, DaVinci Resolve) or a **CMX 3600 EDL** (Premiere, Resolve), frame-accurate to the edited media, with markers for mutes, bleeps, speaker turns and chapters.
- **YouTube chapters and show notes.** Flag chapter starts (🚩 or **C**) or let **Auto-Detect Chapters** find them, then **Copy YouTube Chapters** (`00:00 Intro …`) or save **Show Notes** as Markdown with chapters, speakers and the cleaned transcript.
- **Scene splitter and dead-frame trimmer.** The new **Scenes** mode finds the cuts in an edited video and splits it into one clip per scene, or trims a black or frozen leader and tail.
- **Privacy blur.** Blur, pixelate or black out up to three boxes (an email, an API key, a chat window) for the whole video or a time window, placed on a preview frame; the audio is copied untouched.
- **In-app tool guide.** Every tool has a one-line explanation and a **?** button (or press **?** / **F1**) with what it's best for, how it works, what it writes and a pro tip. Terms like LUFS, dBTP and CRF explain themselves on hover, and **Ctrl/Cmd+K** understands plain English: try *"blur password"*, *"podcast loudness"*, *"davinci resolve"* or *"gif loop"*.

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
| Windows 10/11 (x64) | [Roat-1.0.1-win-x64.exe](https://github.com/angelitojusay/roat/releases/download/v1.0.1/Roat-1.0.1-win-x64.exe) | Installer (recommended) |
| Windows 10/11 (x64) | [Roat-1.0.1-portable.exe](https://github.com/angelitojusay/roat/releases/download/v1.0.1/Roat-1.0.1-portable.exe) | Portable, no install |

### macOS

**Option A — 1-command install (recommended, skips Gatekeeper).** Open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/angelitojusay/roat/main/install.sh | bash
```

The [script](install.sh) downloads the latest release for your Mac (Apple Silicon or Intel), verifies it against `SHA256SUMS-macos.txt` and stops if it doesn't match, quits Roat if it is running, installs `Roat.app` into Applications, clears the download quarantine and opens Roat. Nothing is downloaded through the browser, so macOS shows no "damaged" warning.

**Option B — manual DMG download.**

| Platform | File | Notes |
|---|---|---|
| macOS 13+, Apple Silicon (M1 and later) | [Roat-1.0.1-mac-arm64.dmg](https://github.com/angelitojusay/roat/releases/download/v1.0.1/Roat-1.0.1-mac-arm64.dmg) | Disk image |
| macOS 13+, Intel | [Roat-1.0.1-mac-x64.dmg](https://github.com/angelitojusay/roat/releases/download/v1.0.1/Roat-1.0.1-mac-x64.dmg) | Disk image |

Drag Roat to Applications and open it. Roat isn't notarized yet, so if macOS says **"Roat is damaged and can't be opened"**, run this in Terminal; it fixes it immediately, then open Roat normally:

```bash
xattr -cr /Applications/Roat.app
```

The message comes from the browser's download quarantine, not from a broken file.

SHA-256 checksums: [SHA256SUMS-windows.txt](https://github.com/angelitojusay/roat/releases/download/v1.0.1/SHA256SUMS-windows.txt) · [SHA256SUMS-macos.txt](https://github.com/angelitojusay/roat/releases/download/v1.0.1/SHA256SUMS-macos.txt). All releases are listed on the [Releases page](https://github.com/angelitojusay/roat/releases). Inside the app, **Settings → About → Check for Updates** tells you when a new version is out, and **Install Update Now** downloads, verifies and installs it for you.

## What Roat does

### 1. Media Studio
- Convert video formats, including **AV1** (optionally to a **target file size** and with a **corner logo watermark**), and **ProRes / DNxHR** editing masters and proxies with 24-bit PCM audio, compress to a target size or quality preset, extract audio, and convert audio. **Render 5s Preview** checks the result on 5 seconds first.
- **Trim / Cut** on a waveform with draggable handles and a preview, without re-encoding (or frame-accurate). **Merge Clips** that share a format. **Split Chapters** into numbered files from the file's chapters or pasted timestamps.
- **Burn Captions** from a finished transcript, in three caption styles with placement, size and short-burst options (or two-line bilingual captions). **Subtitle File** adds an `.srt` / `.vtt` / `.ass` as a toggleable track or burns it in.
- **Grade and conform:** lock variable frame rate to CFR, tone-map HDR to SDR, apply a `.cube` LUT, and **auto-crop black bars**.
- **Multi-Cam / PiP:** a webcam in any corner, a 50/50 side-by-side interview, or a 9:16 top / bottom split, with **Auto-Sync** of the two cameras.
- **Voiceover & Dubbing:** natural offline AI voices (**Kokoro-82M**, **12 curated English voices**) from a script with two-voice dialogue tags, a transcript or an SRT / VTT file, timed to the video, mastered to −16 LUFS with an automatic broadcast tail fade-out, as audio or the video's new or ducked audio.
- **Timecode & Audio Sync:** stamp **SMPTE LTC** as the file's timecode, and replace the camera's scratch audio with an external recorder synced by timecode, LTC or **waveform matching**.
- **Chapters & Tags:** bake chapters, tags and cover art into a copy without re-encoding, or strip GPS and camera metadata.
- **Social reframe** to 9:16, 1:1 or 16:9 (blurred backdrop, centre crop or black bars) in Convert and Burn Captions.
- **Mix Music** under a voice with automatic ducking, and **Audiogram** waveform videos for podcasts.
- **Contact Sheet** grids of time-stamped frames, or the best thumbnail, as JPG or PNG. **GIF / WebP Loop** makes crisp animated loops for READMEs and docs.
- **Scenes:** split a video at its scene cuts, or trim black and frozen frames off the ends. **Privacy Blur** blurs, pixelates or blacks out up to three boxes.
- **Workflows:** one-click multi-step recipes (Podcast Master, Short-Form Clips Factory, Clean Cut Interview), or **your own** 2–3 step workflows, where each finished step feeds the next.
- **Stems & Channels:** every audio track as its own file, stereo split into left and right, or a one-sided recording centred. **Inspect Loudness** measures EBU R128 loudness and true peak with a plain verdict.
- **Batches:** up to 50 files at once, one job each.
- Built for **cinema camera files**: ProRes, DNxHR, 10-bit 4:2:2, and multi-track 24-bit audio in `.mov`/`.mxf`/`.mp4`. You choose which track or channel to use.
- **GPU video encoding:** NVIDIA NVENC on Windows and Apple VideoToolbox on macOS for H.264, and the GPU's AV1 encoder where it works. If the GPU can't handle a file, Roat finishes the job on the CPU.

### 2. Transcribe
- Offline transcription with **whisper.cpp**, on the GPU (Apple Silicon Metal or NVIDIA CUDA) or the CPU.
- Three models: **Roat Swift** (fast), **Roat Studio** (high accuracy) and **Roat Cinema Master** (maximum precision). Each is rated for your computer, with a plain-English reason.
- Professional transcript layout with timestamps, exported as `.txt`, `.pdf`, `.docx` and `.srt`.
- **Transcript editor:** correct words, search, play any line from the recording, copy the full text, and save to re-export every file instantly (optionally with short-burst SRT captions).
- **Edit by text:** cut, mute or bleep lines (or sweep away every filler word) and export the edited media; label speakers and rename them everywhere at once.
- **Hand off and publish:** export the edit as an **FCPXML** or **EDL** timeline for Final Cut Pro, DaVinci Resolve or Premiere, copy **YouTube chapters**, or save **show notes** as Markdown.
- **Translation Mode:** transcribe in the spoken language, **translate to English**, or keep both on every line (**bilingual**), with original, English and bilingual SRT / VTT exports.
- Optional translation into 10 languages, and subtitles added back into the video (soft tracks or burned in, in your caption style).

### 3. Clean Up Audio
- Voice Isolation (optionally with **DeepFilterNet3** neural noise removal), Podcast Enhance, and De-Hum & De-Hiss. Video is copied untouched.
- **Voice Tone / EQ:** Warm Broadcast, Crisp Presence, De-Esser and an 80 Hz Rumble Cut.
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
- **Command palette:** **Ctrl+K** (or **Cmd+K**) jumps to any workspace or tool, even from plain English like *"hide my email"*, clears finished jobs, opens the output folder, or opens a transcript by name.
- **Built-in help:** a **?** next to every tool (or **?** / **F1**) explains what it's for, how it works and what it writes.
- **Custom presets:** save your Convert, Clean Up Audio and Transcribe settings under a name and apply them with one click, and move them (with your workflows) to another computer as one `.json` file.
- **System Health:** Settings shows your versions, tools, encoders and AI models, and copies a privacy-safe summary for bug reports.
- **Watch folders:** new files dropped into a chosen folder are converted, cleaned up, transcribed or run through a workflow (built-in or your own) automatically, with your presets.

## First launch

**Windows.** Roat isn't code-signed yet, so SmartScreen may show "Windows protected your PC". Click **More info**, then **Run anyway**. To keep Roat on the taskbar, right-click its icon while it runs and choose **Pin to taskbar**.

**macOS.** With the 1-command install, Roat opens right away. After a manual DMG download, use the `xattr -cr /Applications/Roat.app` fix above if macOS calls Roat "damaged". Later updates installed with **Settings → About → Install Update Now** don't go through the browser, so they open without it.

The first time you use a workspace, Roat offers to download the tools it needs (yt-dlp, ffmpeg, whisper models, the Kokoro voice and so on) from their official releases. It checks each file's SHA-256 before using it.

## Verify your download

macOS (in the folder with the downloads):

```bash
shasum -a 256 -c SHA256SUMS-macos.txt --ignore-missing
```

Windows (PowerShell), then compare with `SHA256SUMS-windows.txt`:

```powershell
Get-FileHash .\Roat-1.0.1-win-x64.exe -Algorithm SHA256
```

## Privacy

- No telemetry, analytics, ads or accounts. Your media never leaves your computer.
- **Translation is the one exception, and only when you ask for it:** the transcript **text** (no audio, file names or paths) is sent to a translation service. The Transcribe view says so next to the language choices.
- Update checks contact GitHub only when you click **Check for Updates**, and updates download only when you click **Install Update Now**.
- Watch folders read only the folders you choose, only while Roat is running.
- **Voiceover runs entirely on your computer:** scripts, transcripts and subtitles are never uploaded. **System Health**'s summary contains no file paths, user or computer name, and leaves your computer only if you paste it somewhere.
- Settings → **App Data & Uninstall** shows what Roat stores and removes it, or uninstalls Roat completely.

## Support Roat

Roat is free, with no ads, accounts or locked features. If it saves you time, you can support development at **[buymeacoffee.com/roat](https://buymeacoffee.com/roat)** (also the **Sponsor** button at the top of this page). Thank you!

## Credits

Roat stands on excellent open-source work: [yt-dlp](https://github.com/yt-dlp/yt-dlp), [FFmpeg](https://ffmpeg.org), [whisper.cpp](https://github.com/ggml-org/whisper.cpp), [DeepFilterNet](https://github.com/Rikorose/DeepFilterNet), [RNNoise](https://github.com/xiph/rnnoise), [sherpa-onnx](https://github.com/k2-fsa/sherpa-onnx) with [Kokoro-82M](https://huggingface.co/hexgrad/Kokoro-82M), [Deno](https://deno.com) and [Electron](https://www.electronjs.org). The tools are downloaded from their official releases on first use. Full licences are in the app under **Settings → About → View Open Source Licenses**.

Roat is provided under its End-User License Agreement, shown when you install it and in **Settings → About**.
