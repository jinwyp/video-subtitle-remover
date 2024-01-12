@echo off
IF NOT EXIST venv (
    python -m venv venv
) ELSE (
    echo venv folder already exists, skipping creation...
)
call .\venv\Scripts\activate.bat

timeout /t 2 /nobreak 

python -m pip install --upgrade pip

@REM python -m pip install paddlepaddle-gpu==2.6.0.post120 -f https://www.paddlepaddle.org.cn/whl/windows/mkl/avx/stable.html

python -m pip install paddlepaddle-gpu==2.4.2.post117 -f https://www.paddlepaddle.org.cn/whl/windows/mkl/avx/stable.html

python -m pip install torch torchvision --index-url https://download.pytorch.org/whl/cu121

@REM python -m pip install albumentations av easydict einops filesplit imgaug
@REM python -m pip install kornia lmdb numpy opencv-python omegaconf
@REM python -m pip install pyclipper PyYAML PySimpleGUI pandas pytorch-lightning protobuf
@REM python -m pip install scikit-image scikit-learn tqdm webdataset

pip install -r requirements.txt
