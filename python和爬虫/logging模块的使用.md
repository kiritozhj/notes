```python
import logging # 导入logging模块


logging.basicConfig( level=logging.INFO, format = '%(asctime)s - %(levelname)s - %(message)s'
# 设置日志格式，asctime-人类可读时间，levelname-日志等级，message-日志信息

logging.info('xxxxx %s xxxx %d', 'xxx', 2) # 打印日志
```
日志等级:
**DEBUG
INFO
WARNING
ERROR
CRITICAL**

初始化不设置日志等级的话，**默认**只会打印**warning**级别的日志