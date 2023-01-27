# GStreamer

```sh
# バージョン確認
gst-inspect-1.0 --version

# プラグインの詳細情報を表示
gst-inspect-1.0 "avdec_h264"
gst-inspect-1.0 "x264enc"

# 動画を読み込んでmp4で出力
gst-launch-1.0    filesrc location=sample.mp4  ! decodebin                                       ! x264enc ! mp4mux ! filesink location=out.mp4
gst-launch-1.0    filesrc location=sample.webm ! decodebin                                       ! x264enc ! mp4mux ! filesink location=out.mp4
gst-launch-1.0    filesrc location=sample.avi  ! decodebin                        ! videoconvert ! x264enc ! mp4mux ! filesink location=out.mp4
gst-launch-1.0    filesrc location=sample.mp4  ! qtdemux ! h264parse ! avdec_h264                ! x264enc ! mp4mux ! filesink location=out.mp4
```


## 参考サイト

- [GStreamerのエレメントをつないでパイプラインを組み立てるには](https://www.clear-code.com/blog/2014/7/22.html)
- [GStreamer でテキスト処理 1: Core機能だけで cat, cp, dd, & tee](http://hellolibraryworld.blogspot.com/2016/12/gstreamer-1-core-cat-cp-dd-tee.html)
