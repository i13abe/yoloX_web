.PHONY: lint
lint:
	poetry run pysen run lint

.PHONY: format
format:
	poetry run pysen run format

.PHONY: test
test:
	poetry run pytest -s -vv ./tests

.PHONY: yoloXinstall
yoloXinstall:
	poetry run pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cpu
	cd yoloX_web/YOLOX/ && poetry run pip install -v -e .