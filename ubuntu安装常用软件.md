## 安装mysql
``` sh  
apt install mysql-server  
```  

## 检查mysql状态  
``` sh
systemctl status mysql  
```

## 关闭mysql服务  
``` sh
systemctl stop mysql  
```

## 启动mysql服务  
``` sh
systemctl start mysql  
```

## 重启mysql服务  
``` sh
systemctl restart mysql
```

## dell 5400设置亮度
```sh
sudo apt install gnome-terminal
```
创建brightUp.sh  
echo '123'|sudo -S brightnessctl --device='platform::kbd_backlight' set 10+  
创建brightDown.sh  
echo '123'|sudo -S brightnessctl --device='platform::kbd_backlight' set 10-  
设置快捷键  
bash brightUp.sh

## idea和pycharm
export IDEA_VM_OPTIONS="/usr/local/idea/jetbra/vmoptions/idea.vmoptions"  
export PYCHARM_VM_OPTIONS="/usr/local/pycharm/jetbra/vmoptions/pycharm.vmoptions"  
chrome中修改要去.config/idea里修改idea64.vmoptions
