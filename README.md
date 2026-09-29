# photo image runner

A portable local command for an OpenAI-compatible image API. It defaults to the configured cctq.ai endpoint and gpt-image-2.5-flare, saves images under /home/wengyikun/1 when --out is omitted, and does not send reasoning_effort.

## Install

~~~bash
git clone https://github.com/Destiny916/photo.git
cd photo
./install.sh
# Edit ~/.config/codex-imagegen/credentials once and set OPENAI_API_KEY
~~~

Ensure ~/.local/bin is on PATH, then run:

~~~bash
codex-imagegen --prompt "Warm desk beside a window at dusk, photorealistic"
~~~

## Reference images

A reference image switches the request to the images/edits endpoint. Use one or more --reference arguments and state what to preserve in the prompt.

~~~bash
codex-imagegen --reference ./person.png --prompt "Keep the person's facial features and hairstyle; create a full-body desk-side selfie under a warm lamp, photorealistic" --out /home/wengyikun/1/desk-selfie.png
~~~

## Model override

~~~bash
codex-imagegen --model YOUR_MODEL --prompt "Your prompt"
~~~

--model overrides IMAGE_MODEL, which overrides the built-in gpt-image-2.5-flare default. See docs/codex-imagegen.md for the complete runnable source. Never commit config/credentials.
