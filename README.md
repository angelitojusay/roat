# Roat

**Private, local-first desktop media studio, audio clean up, multi-language AI transcription and AI voiceover for Windows & macOS.**

Roat downloads online video, converts and cleans up your own media (including 200 GB+ cinema camera files), transcribes speech, and turns scripts and subtitles into natural voiceovers. All of it happens on your computer. Nothing is uploaded, there are no accounts, and there is no telemetry.

**[⬇ Download the latest release](https://github.com/angelitojusay/roat/releases/latest)** · current version **v1.1.5**

## What's new

### v1.1.4
- **Four more camera LUTs.** **ARRI LogC3** (EI 800, AWG3), **RED Log3G10** (REDWideGamutRGB), **DJI D-Log** (D-Gamut) and **Panasonic V-Log** (V-Gamut) to Rec.709 join Sony S-Log3 and Canon C-Log2 / C-Log3. They are made inside Roat from each maker's published curve and colour primaries, with a smooth highlight roll-off so skies and windows ease into white instead of clipping flat. Pick them in **3D LUT Grading** or any LUT menu.
- **Auto-Cut follows speakers who move.** Built-in speaker tracking needs no download: Roat finds each speaker's mouth from the clean dialogue recording, then follows their face as they sway, lean or shift in frame, so their lips stay measured. Nothing is uploaded and no model is installed; an optional local face detector still takes over when you have one.

### v1.1.3
- **Timelines that open cleanly in DaVinci Resolve.** Every timeline Roat writes now imports into **DaVinci Resolve Studio 21.2**. That covers multi-cam sync with Auto-Cut, and the transcript cut as **FCPXML**, **Premiere XML** and **EDL**. Each was tested in Resolve on real camera files with and without timecode. Clips from cameras that record timecode (for example `01:00:00:00`) now link straight to your media instead of being refused or going offline.
- **Auto-Cut sounds right.** The switched edit on the top track is now picture only, so the cameras' own scratch audio no longer plays under your clean dialogue recording.
- **Every cut stays in sync.** A shot that starts before a camera began recording, or runs past its last frame, is now trimmed to the footage that camera actually has, instead of playing a few frames early.

### v1.1.2
- **Your LUT stays on.** The LUT you pick for the Studio monitor now stays on while you move between tools: set In / Out in **Trim / Cut**, make a voiceover in **AI Voiceover**, and **Export .roatlip** still records the camera LUT. Only choosing **No LUT**, or removing the clip, turns it off.
- **Auto-Cut that isn't fooled by the background.** When a local, UltraFace-compatible face detector is available (the model in `<userData>/models/face/` plus the ONNX Runtime, which Roat doesn't bundle or download), Auto-Cut reads each speaker's lips under their detected face, so a screen or gesture that moves with the conversation is no longer taken for a talking mouth. Without one, Auto-Cut works exactly as before.

### v1.1.1
- **Reaction shots that wait for the end of a thought.** When the main recording has a Whisper transcript (Roat's own, or an `.srt` / `.vtt` saved next to it), Auto-Cut's listener reactions now cut away at the end of a sentence or clause instead of at any pause, and cut back just as the next phrase begins. The Deliverables strip marks these edits **clause-snapped**. Without a transcript, Auto-Cut works exactly as before.

### 🎬 v1.1.0: the Studio release

**A new Studio**
- **Dock, monitor and Inspector.** Media Studio becomes the **Studio**: Quick Recipes and tools on the left; a monitor with a draggable **Log / Rec.709 before-and-after wipe**, a luma waveform, loudness and clip details; a **lossless keyframe trim bar**; and one Inspector on the right with every setting and a live list of the files each run will write. Every earlier tool is still there under **More tools**.
- **Batch Queue, Transcript and Deliverables** in one drawer: live progress per clip and step, transcript lines you click to cut (with FCPXML / Premiere XML cut timelines), and every finished file with **Open** and **Show in folder**.
- **Five Quick Recipes** run a whole job from one click: **On-Set Fast Turnaround**, **Multi-Cam Shoot Sync & Proxy**, **OBS / Screen-Recording Fixer**, **Interview / Dialogue Prep** and **Social / Delivery Finish**.

**For editors**
- **Camera LUTs built in.** Sony **S-Log3** (S-Gamut3.Cine and S-Gamut3) and Canon **C-Log2 / C-Log3** to Rec.709, made inside Roat, with nothing to download.
- **Editor proxies.** 1080p **ProRes Proxy** or fast **H.264** at a constant frame rate, keeping the source timecode, with an optional LUT and a clip-name and timecode burn-in.
- **Multi-cam sync for up to 16 cameras and recorders** by timecode or by audio, with match-confidence and clock-drift badges, handed to DaVinci Resolve, Final Cut Pro or Premiere as a synced **FCPXML** or **Premiere XML** timeline.
- **Visual Auto-Cut.** Roat sees who is talking (lip movement matched against the clean dialogue recording) and adds a switched edit on a top track of that timeline, with editor-style pacing, the wide shot when people talk over each other, and optional reaction shots of a nodding listener. No AI model to download.
- **Lossless trims that snap to keyframes**, so a no-re-encode cut starts where you see it.

**Voices and hand-off**
- **Six Voice Lab voices** join the twelve Kokoro voices: **Sol**, **Maple**, **Vale** (UK) and three blends (Fenrir · Michael, Kore · Heart, Heart · Bella).
- **Export .roatlip.** Hand a finished voiceover or cleaned-up audio, with its subtitles, camera clip, In / Out points and LUT, to Roat's upcoming AI avatar & lip-sync companion app as one small `.roatlip.json` file.

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
| Windows 10/11 (x64) | [Roat-1.1.5-win-x64.exe](https://github.com/angelitojusay/roat/releases/download/v1.1.5/Roat-1.1.5-win-x64.exe) | Installer (recommended) |
| Windows 10/11 (x64) | [Roat-1.1.5-portable.exe](https://github.com/angelitojusay/roat/releases/download/v1.1.5/Roat-1.1.5-portable.exe) | Portable, no install |

### macOS

**Option A — 1-command install (recommended, skips Gatekeeper).** Open Terminal and run:

```bash
curl -fsSL https://raw.githubusercontent.com/angelitojusay/roat/main/install.sh | bash
```

The [script](https://github.com/angelitojusay/roat/blob/main/install.sh) downloads the latest release for your Mac (Apple Silicon or Intel), verifies it against `SHA256SUMS-macos.txt` and stops if it doesn't match, quits Roat if it is running, installs `Roat.app` into Applications, clears the download quarantine and opens Roat. Nothing is downloaded through the browser, so macOS shows no "damaged" warning.

**Option B — manual DMG download.**

| Platform | File | Notes |
|---|---|---|
| macOS 13+, Apple Silicon (M1 and later) | [Roat-1.1.5-mac-arm64.dmg](https://github.com/angelitojusay/roat/releases/download/v1.1.5/Roat-1.1.5-mac-arm64.dmg) | Disk image |
| macOS 13+, Intel | [Roat-1.1.5-mac-x64.dmg](https://github.com/angelitojusay/roat/releases/download/v1.1.5/Roat-1.1.5-mac-x64.dmg) | Disk image |

Drag Roat to Applications and open it. Roat isn't notarized yet, so if macOS says **"Roat is damaged and can't be opened"**, run this in Terminal; it fixes it immediately, then open Roat normally:

```bash
xattr -cr /Applications/Roat.app
```

The message comes from the browser's download quarantine, not from a broken file.

SHA-256 checksums: [SHA256SUMS-windows.txt](https://github.com/angelitojusay/roat/releases/download/v1.1.5/SHA256SUMS-windows.txt) · [SHA256SUMS-macos.txt](https://github.com/angelitojusay/roat/releases/download/v1.1.5/SHA256SUMS-macos.txt). All releases are listed on the [Releases page](https://github.com/angelitojusay/roat/releases). Inside the app, **Settings → About → Check for Updates** tells you when a new version is out, and **Install Update Now** downloads, verifies and installs it for you.

## What Roat does

Roat is a desktop editing-prep studio: sync and cut multi-camera shoots, clean up and master dialogue, transcribe and edit by text, voice and dub, grade camera log, and hand finished timelines to your editor. It runs on your own computer, with no account and no subscription.

### 1. The Studio
One window, four parts:
- **Dock (left):** the Quick Recipes, the seven Studio Tools, and **More tools** (every earlier Media Studio tool).
- **Monitor (centre):** plays the clip with a draggable **Log / Rec.709 before-and-after wipe**, a luma waveform, loudness and clip details, and a **lossless keyframe trim bar** for In / Out.
- **Inspector (right):** every setting for the recipe or tool you picked, and a live list of the files the run will write.
- **Drawer (bottom):** **Batch Queue** (progress per clip and step), **Transcript** (click a line to jump to it, or to cut it) and **Deliverables** (every finished file, with **Open** and **Show in folder**).

**Five Quick Recipes** run a whole job from one click:

| Recipe | What it chains |
|---|---|
| **On-Set Fast Turnaround** | mastered audio and a Whisper `.srt` / `.txt` for the producer, a constant-frame-rate LUT proxy for the editor |
| **Multi-Cam Shoot Sync & Proxy** | timecode or audio sync, proxies, a synced Resolve / Premiere timeline (with Auto-Cut if you like) |
| **OBS / Screen-Recording Fixer** | VFR → CFR, DeepFilterNet3 voice isolation with Warm Broadcast EQ at −16 LUFS, captions |
| **Interview / Dialogue Prep** | lossless keyframe trim, dialogue clean-up, transcript, silence-cut timelines |
| **Social / Delivery Finish** | 3D LUT grade, −16 LUFS master, burned-in captions |

**Seven Studio Tools:** Trim & Proxy · Multi-Cam Sync · VFR → CFR · Audio Cleanup & Master · Whisper Subtitles · AI Voiceover & Dubbing · 3D LUT Grading.

### 2. Multi-cam sync, Auto-Cut and NLE timelines
- **Sync up to 16 cameras and recorders** by timecode or by their audio, with match-confidence and clock-drift badges.
- **Visual Auto-Cut** adds a switched edit on the timeline's top track. Roat sees who is talking by matching each camera's lip movement against the clean dialogue recording; no AI model to download.
  - **Speaker cuts lead the speech** by 150 ms (a J-cut), so the picture changes just before the line starts.
  - **The wide shot** covers people talking over each other.
  - **Reaction shots** of a nodding listener are optional. With a transcript, they cut away at the end of a sentence or clause and come back as the next phrase begins.
  - **Built-in speaker tracking, nothing to download:** Roat finds each speaker's mouth from the dialogue itself and follows their face as they sway, lean or move in frame, so a moving speaker keeps being read correctly.
  - **Face-anchored lip reading:** with an optional local face detector, Roat reads each speaker's lips under their detected face, so a screen or gesture that moves with the conversation isn't taken for a talking mouth.
  - The switched edit is picture only; your clean dialogue recording stays the timeline's audio.
- **Timelines for your editor:**
  - **FCPXML 1.9** for DaVinci Resolve and Final Cut Pro, and **Premiere XML** (xmeml 5) for Premiere Pro, for the synced cameras and the Auto-Cut.
  - **FCPXML**, **Premiere XML** and **CMX 3600 EDL** for transcript cuts.
  - Each clip keeps its camera's own SMPTE timecode, so the timeline links straight to your media.
  - Every timeline type has been imported into **DaVinci Resolve Studio 21.2** on real camera files, with and without timecode, with **no offline clips**. In **Adobe Premiere Pro 27.0**, the **Premiere XML** timelines (the multi-cam Auto-Cut and the transcript cut) import frame-exact with every clip linked to its camera timecode, and the transcript cut's **EDL** links every event to its clip by timecode after Premiere's **Link Media** (an EDL names no file), with none offline.

### 3. Transcript and text-based editing
- **Offline transcription** with **whisper.cpp**, on the GPU (Apple Silicon Metal or NVIDIA CUDA) or the CPU:
  - three models: **Roat Swift**, **Roat Studio** and **Roat Cinema Master**;
  - exports as `.txt`, `.pdf`, `.docx`, `.srt` and `.vtt`;
  - **Translation Mode:** translate to English, or keep both languages on every line.
- **Edit by text:**
  - Play or jump to any line; cut, mute or bleep it.
  - **Sweep Fillers / Keywords** marks every "um", "uh" or chosen word at once.
  - Label and rename speakers.
  - **Export Edited Media** renders the recording without the cut lines, with a re-timed `.srt`.
- **Captions:** burn them in as **Cinema Classic**, **High-Contrast Yellow** or **Boxed Background**, with placement, size and punchy **short-burst** options (or two-line bilingual captions). Or add any `.srt` / `.vtt` / `.ass` as a toggleable track.
- **Publish:** copy **YouTube chapters**, or save **show notes** as Markdown.

### 4. Voice, audio polish and the Roat Voca handoff
- **AI voiceover and dubbing, made on your computer:** **Kokoro-82M** with **18 voices** (12 Kokoro voices and 6 Voice Lab voices).
  - Read a script, including two-voice dialogue with `[Host]:` / `[Guest]:` tags and `[pause 0.5s]` breaths.
  - Or dub a video from a transcript or an SRT / VTT file, every line on its own cue.
- **Clean Up Audio:**
  - **Voice Isolation** with **DeepFilterNet3** neural noise removal, or **RNNoise**;
  - **Podcast Enhance**, **De-Hum & De-Hiss**;
  - **Voice Tone / EQ** (Warm Broadcast, Crisp Presence, De-Esser, 80 Hz Rumble Cut);
  - **Remove Long Silences**.
- **Broadcast loudness:** voiceovers and recipes are mastered to **−16 LUFS**, and **Inspect Loudness** measures EBU R128 integrated loudness, loudness range and true peak with a plain verdict.
- **Mix Music** under a voice with automatic ducking.
- **Export .roatlip** hands a finished voiceover or cleaned-up dialogue to **Roat Voca**, Roat's companion app for local, GPU-accelerated **Visual ADR** (lip re-sync) and **talking-presenter / picture-in-picture** overlays. It travels as one small `.roatlip.json` (v1.0) file with its subtitles, camera clip, In / Out points and LUT.

### 5. Color, camera LUTs and finishing
- **Camera LUTs built in**, made inside Roat with nothing to download:
  - Sony **S-Log3** (S-Gamut3.Cine and S-Gamut3) to Rec.709;
  - Canon **C-Log2** and **C-Log3** to Rec.709;
  - **ARRI LogC3** (EI 800, AWG3), **RED Log3G10** (REDWideGamutRGB), **DJI D-Log** (D-Gamut) and **Panasonic V-Log** (V-Gamut) to Rec.709, with a smooth highlight roll-off;
  - or load your own `.cube` 3D LUT at 25–100 %.
- **Live before-and-after wipe** on the Studio monitor, and the LUT you pick stays on as you move between tools.
- **Conform:**
  - lock variable frame rate (phones, screen recordings) to CFR;
  - tone-map HDR to SDR;
  - **auto-crop black bars**.
- **Editor proxies:** 1080p **ProRes Proxy** or fast **H.264**, keeping the source timecode, with an optional LUT and a clip-name and timecode burn-in.
- **Masters and delivery:**
  - **ProRes** (422 Proxy to 4444) and **DNxHR** with 24-bit PCM audio;
  - **AV1** (optionally to a target file size);
  - social reframes to 9:16, 1:1 or 16:9.
- **GPU encoding:** NVIDIA NVENC and Apple VideoToolbox for H.264, and the GPU's AV1 encoder where it works.
- **Built for cinema camera files:** ProRes, DNxHR, 10-bit 4:2:2 and multi-track 24-bit audio in `.mov` / `.mxf` / `.mp4`, including 200 GB+ files.

### 6. More tools
- **Convert & Compress, Trim / Cut, Merge Clips, Split Chapters:** without re-encoding where possible.
- **Video tools:**
  - **Multi-Cam / PiP** and split-screen layouts;
  - **Chapters & Tags** (and a GPS / camera-metadata scrub);
  - **Privacy Blur**;
  - **Scenes** (split at cuts, trim black or frozen ends).
- **Picture and audio exports:**
  - **Contact Sheet** and best thumbnail;
  - **GIF / WebP Loop**;
  - **Audiogram** waveform videos;
  - **Stems & Channels**.
- **Running many jobs:**
  - **Workflows:** one-click multi-step chains, or your own;
  - **Watch folders**;
  - **batches** of up to 50 files.
- **Web Import:** download video and audio from YouTube, Vimeo and the many other sites [yt-dlp](https://github.com/yt-dlp/yt-dlp) supports, as a whole file or a clip range, with subtitles, chapters and the thumbnail. Only download content you have the right to download.

### 7. Local, free and permissively licensed
- **Your media stays on your computer.** There's no telemetry, account or subscription.
- **Permissive AI models:** Whisper (MIT), Kokoro-82M (Apache-2.0), DeepFilterNet3 (MIT / Apache-2.0) and RNNoise (BSD) all run locally.
- **What does go online, only when you ask:**
  - **Translation** sends the transcript's text (no audio, file names or paths) to a translation service.
  - **Web Import** downloads what you ask for.
  - **Tools and models** are downloaded once from their official releases and checked by SHA-256.

### Getting around
- **Command palette:** **Ctrl+K** (or **Cmd+K**) jumps to any tool, even from plain English like *"hide my email"* or *"davinci resolve"*.
- **Built-in help:** a **?** next to every tool (or **?** / **F1**) explains what it's for, how it works and what it writes.
- **Send To…** hands a finished file to another tool, already filled in.
- **Custom presets:** save presets, and move them (with your workflows) to another computer as one `.json` file.
- **System Health:** shows your versions, tools, encoders and AI models, and copies a privacy-safe summary for bug reports.

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
Get-FileHash .\Roat-1.1.5-win-x64.exe -Algorithm SHA256
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
