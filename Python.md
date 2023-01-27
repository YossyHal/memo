## venv

```sh
# 1. 仮想環境を作成
python -m venv .venv

# 2. 仮想環境をアクティベート
source .venv/bin/activate
.venv\Scripts\activate.ps1

# 3. pipを最新版に更新
python -m pip install --upgrade pip

# 4. ライブラリをインストール
pip install -r requirements.txt
python -m pip install black
python -m pip install flake8
```

## ライブラリのバージョンを確認

```sh
# PyTorch
python -c 'import torch;print(torch.__version__);'

# ONNX
python -c 'import onnx;print(onnx.__version__);'

# OpenCV
python -c 'import cv2;print(cv2.__version__);'
```
