## 查找镜像  
docker search 镜像标识  

## 下载镜像  
docker pull 镜像标识  

## 显示本地镜像  
docker images  

## 删除镜像  
docker image rm 镜像标识  

## 显示本地所有容器  
docker ps -a

## 显示正在运行的容器  
docker ps  

## 启动终止的容器  
docker start 容器标识  

## 重启正在运行的容器  
docker restart 容器标识  

## 终止运行的容器  
docker stop 容器标识  

## 进入容器  
docker exec -it 容器标识 bash  

## 删除容器  
docker container rm 容器标识  

## 从镜像启动一个容器  
docker run -itd --name 自定义容器名 镜像标识 bash  
- i 交互模式，让容器的标准输入保持打开  
- t 分配一个终端  
- d 以守护态运行