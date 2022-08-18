```python
from pyquery import PyQuery as pq

```
**初始化：**
```python
html = pq(text) # 用字符串初始化一个PyQuery对象

html = pq(url='xxx') # 用url初始化

html = pq(filename='xxx') # 用文件初始化
```
**查找结点：**
```python
li = html('li')
li = html.find('li') # 查找子孙节点

div = li.parent() # 返回父节点

div = li.parents('#id') #查找祖先节点

li = li.siblings()
li = li.siblings('#id') # 查找兄弟节点
```

**遍历节点：**
```python
for i in li.items():
    print(i)
```

**提取属性：**
```python
li.attr('id') # 如果对象含多个节点，那调用attr方法只会提取第一个节点的属性
```

**提取文本：**
```python
li.text() # 如果对象含多个节点，那调用text方法会返回所有节点拼接而成字符串，节点之间用空格连接

li.html() # 如果对象含多个节点，那调用html方法只会返回第一个节点的html字符串
```