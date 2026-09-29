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


codex-imagegen \
  --model gpt-image-2.5-flare \
  --reference /home/wengyikun/1/reference-person.png \
  --size 1024x1536 \
  --quality high \
  --out /home/wengyikun/1/desk-selfie-v1.png \
  --prompt "使用参考图中的人物作为唯一人物身份参考，保留其脸部特征、发型、肤色与整体气质。生成一张自然的全身镜前自拍：一位成年年轻女性坐在整洁温暖的书桌旁，正低头回复手机消息；室内傍晚氛围，窗边柔和蓝紫色环境光与桌面暖色台灯混合照明。穿简约深色针织上衣、短裙和黑色丝袜，姿态自然得体，腿部完整入镜。画面为真实手机自拍摄影风格，竖构图，全身清晰，皮肤与布料纹理自然，背景包含笔记本电脑、键盘、书籍和小绿植。不要文字、Logo、水印、额外人物、畸形手指、重复肢体、模糊面部或裁切掉脚部。"
