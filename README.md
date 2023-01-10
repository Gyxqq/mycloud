# mycloud
封装的 nextcloud 自带离线下载器，onlyoffice插件 容器内已配置好apt


image 已上传dockerhub 


使用 docker pull gyxqqq/mycloud:mycloud 拉取镜像


用docker run --name dockername -p yourport:80 -d gyxqqq/mycloud:mycloud 创建容器
  
  
 请登录服务器网站进行网站配置安装
  
  
  务必在配置结束后执行以下操作
  
  
  docker exec -it dockername bash
  
  cd /root
  
  chmod 777 start.sh
  
  ./start.sh
  
  等待命令执行完后退出 或者使用screen执行命令


