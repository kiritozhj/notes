```python
from parsel import Selector / import parsel也行

s = Selector(text=html) / s = parsel.Selector(text=html) # 初始化Selector对象
```
**3种选择器：**

css：
```python
s.css(.class #id)
```
xpath:
```python
s.xpath('//node[@attr="xxx"')
```
re:
```python
s.re(r'xxxxx')
```
经过选择器筛选出来的节点仍然是Selector对象，可以进一步选择操作

**提取文本：**
使用xpath或者re，比较而言xpath更方便，直接用text()就可以获得，再使用get()或getall()获得str

**提取属性：**
xpath直接用@attr="xxx"就可以，css需要用::attr()获得，再用get()或getall()
