# Browser MCU Docker

* Browser MCU Docker is WebRTC MCU module using a browser for video/audio processing
* Browser MCU Server is using [Browser MCU Core](https://github.com/mganeko/browser_mcu_core) library 
* Browser MCU Docker is using Chrome s headless browser, running in docker container
* Browser MCU Docker is based on [justinribeiro/chrome-headless](https://hub.docker.com/r/justinribeiro/chrome-headless/)
* Browser MCU Docker is a part of Browse MCU Series
* --
* Browser MCU Docker はブラウザの映像/音声処理を活用した、WebRTC用MCUモジュールです
* Browser MCU Docker は[Browser MCU Core](https://github.com/mganeko/browser_mcu_core) ライブラリを利用しています
* Browser MCU Docker は Chromeのヘッドレスブラウザーモードを利用しています
* Browser MCU Docker は [justinribeiro/chrome-headless](https://hub.docker.com/r/justinribeiro/chrome-headless/) のイメージをベースにしています
* Browser MCU Server は Browse MCU シリーズの一部です

## Confirmed Environment / 動作確認環境

* Server OS
  * Mac OS X 10.12.5
  * Ubuntu 16.04 LTS
* Docker 17.06


## Usage / 利用方法

#### Preparation / 準備

```
$git clone https://github.com/mganeko/browser_mcu_docker.git
$docker build -t mganeko/browser_mcu_docker .　
```

or 

```
$docker pull mganeko/browser_mcu_docker
```

#### run / 実行

* when using _myroomname_ for MCU Room
* MCUのルーム名が _myroomname_ の場合

```
$docker run -d -p 9222:9222 --cap-add=SYS_ADMIN mganeko/browser_mcu_docker myroomname
```


## License / ライセンス

* Browser MCU Docker is under the MIT license
* Browser MCU Docker はMITランセンスで提供されます

## To Do
