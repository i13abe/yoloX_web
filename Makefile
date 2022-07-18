.PHONY: lint
lint:
	poetry run pysen run lint

.PHONY: format
format:
	poetry run pysen run format

.PHONY: test
test:
	poetry run pytest -s -vv ./tests

.PHONY: install
install:
	poetry install
	poetry run pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu
	cd yoloX_web/YOLOX/ && poetry run pip install -v -e .

.PHONY: yoloXinstall
yoloXinstall:
	poetry run pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu
	cd yoloX_web/YOLOX/ && poetry run pip install -v -e .

.PHONY: demo_webcam
demo_webcam:
	cd yoloX_web/YOLOX && poetry run python tools/demo.py webcam -n yolox-nano -c ../model/yolox_nano.pth --camid 0 --conf 0.25 --nms 0.45 --tsize 416 --device cpu