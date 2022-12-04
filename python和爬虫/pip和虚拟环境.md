## 卸载所有包：
pip freeze>python_modules.txt
pip uninstall -r python_modules.txt -y

## 更新所有包：
pip install pip-review
pip-review -a

## 创建虚拟环境：
python -m venv XXX --upgrade-deps
## 进入虚拟环境：
XXX\Scripts\activate.bat

## 下载文件内所有包：
pip install -r requirement.txt

## 生成依赖包列表
pip freeze > requirements.txt

## 根据requirements.txt安装依赖
pip install -r requirements.txt
