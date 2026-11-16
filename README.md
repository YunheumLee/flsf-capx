# Cross-user wearable hand interface: demo videos

Demo page for the poster **SB12.07.05**, MRS Fall Meeting 2026 (Boston, December 3, 2026).

**Page:** https://yunheumlee.github.io/flsf-capx/

> Cross-user wearable hand interface through memoryless strain sensing and user-conditioned alignment
> Yunheum Lee\*, Min Kim\*, Kyunghyun Jo\*, Gun-Hee Lee†, Sungho Jo† and Seongjun Park†
> (\* equal contribution, † corresponding authors). Manuscript under review.

## Videos

| File | Supplementary Video |
|---|---|
| `videos/video1.mp4` | 1. Data acquisition process for model training |
| `videos/video2.mp4` | 2. Task performance of the model builder in a virtual environment |
| `videos/video3.mp4` | 3. Generalizability of the model to new users (featured at the top of the page) |
| `videos/video4.mp4` | 4. Hand movement replication in a physics-based simulator |
| `videos/video5.mp4` | 5. Gesture-based control of diverse real-world devices |

Each video has a thumbnail with the same name and `.jpg` (for example `videos/video3.jpg`).
If a video file is missing, the page shows a "Video coming soon" placeholder in its place.

The web versions are re-encoded from the Supplementary Videos for phones: black side bars are cropped, silent audio tracks are removed, and the opening title slides of Videos 1 and 3 are trimmed. On the page, Video 3 autoplays from the new user's part (0:33), with chapter buttons for the rest.

## Adding a video

1. Compress it so it plays smoothly on phones and stays under GitHub's limits
   (25 MB per file when uploading in the browser, 100 MB per file with git):

   ```bash
   ./compress.sh 3 "raw/Supplementary Video 3.mp4"
   ```

   This writes `videos/video3.mp4` (H.264, at most 1280 px wide, web-optimized) and `videos/video3.jpg`.
2. Commit and push, or upload the files in the `videos` folder on GitHub.

## Publishing

Settings → Pages → Build and deployment → Source: **Deploy from a branch**, Branch: **main**, folder **/ (root)**.
