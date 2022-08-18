```python
from lxml import etree

html = etree.HTML(text) # 从字符串实例化
html = etree.parse(path, etree.HTMLParser()) # 从文件实例化

resList = html.xpath('xxxx')

```