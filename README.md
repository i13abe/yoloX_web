# yoloX on web
project card : https://github.com/i13abe/yoloX_web/projects/1?add_cards_query=is%3Aopen

# Run format and lint before PR
First you should add files.

```sh
$ git add .
```

Then, run the format.

```sh
$ make format
```

If you detect modified or correct code files, you should add files again.
After them, tun the lint.

```sh
$ make lint
```

# Installation
clone this project and run poetry install.

```sh
$ git clone --recursive git@github.com:i13abe/yoloX_web.git
$ poetry install
```

If you forget to clone submodele (forget --recursive when cloning), please run below.

```sh
$ git submodule update --init --recursive
```

Install yoloX.

```sh
$ make yoloXinstall
```

# Demo
Demo yolovX on webcamera.

```sh
$ cd yoloX_web/YOLOX
$ poetry run python tools/demo.py webcam -n yolox-nano -c ../model/yolox_nano.pth --camid 0 --conf 0.25 --nms 0.45 --tsize 416 --device cpu
```