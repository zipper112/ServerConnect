[toc]



# 服务器联网

## 安装

### windows服务端安装

1. 打开windows文件夹

2. 首先执行clash文件，会有让你确定访问公共网络的提示，点击确定

   > ![image-20240923000803421](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923000803421.png)

3. 执行完毕后立马关闭窗口。这个文件在后面还会有用，不要删它

4. 执行setup文件![image-20240923000820842](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923000820842.png)

5. 看到如下提示后关闭窗口即可
   <img src="C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923000832468.png" alt="image-20240923000832468" style="zoom:67%;" />

## 第二步骤，linux配置

1. 把linux文件夹中的clash.zip传到服务器上

2. 登录你的服务器账号，然后新建文件夹clash，然后把clash.zip文件放进去
   <img src="C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923000909177.png" alt="image-20240923000909177" style="zoom: 80%;" />

3. 进入到clash文件夹下，开始安装，依次执行以下命令：

   ~~~bash
   cd ./clash
   unzip clash.zip
   bash setup.sh
   ~~~

   

4. 没有报错提示就说明安装成功

# 使用

## 第一步

首先你需要校园内网, 通过VPN远程接入

![image-20240923001120391](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001120391.png)

## 第二步

打开VPN，查看虚拟ip

<img src="C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001216680.png" alt="image-20240923001216680" style="zoom:67%;" /><img src="C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001236189.png" alt="image-20240923001236189" style="zoom:67%;" />

## 第三步

启动windows下的clash，注意启动之后不能关闭，**如果不想联网了，在关闭**。

![image-20240923001422781](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001422781.png)

## 第四步

这是最后一步了，登录服务器。输入clash，把刚才记录的ip输入进去，然后回车。

注意，此时不用管端口，直接回车跳过。

![image-20240923001736487](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001736487.png)

输入spip，然后输入你想要装的包就可以开始装了！

![image-20240923001755951](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923001755951.png)

# Q&A

## 关于安装

Q:请问每次安装包我都需要重复1-4步么？

A:每次你**重新连接到校园网**你都需要重新走一遍1-4步，因为校园网采用DHCP协议，该协议会动态的分配ip。每次都不一样。

如果你始终没有退出校园网，那么你可以使用spip一直安装。注意，**windows**上的**clash**不能关闭！

## 其他问题

还有替他问题请截图错误日志，以及详细描述错误时的操作。

在实验室里联系@马浩泷

或者发邮件到ninesxd@qq.com

# 进阶

如果发现如下报错格式：

![image-20240923002044527](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923002044527.png)

那么恭喜你，此时你和可能是无法连接外网。

此时需要你电脑上拥有科学上网工具才能进行下面的步骤：

1. 打开自己的科学上网工具，此时演示使用的是clash
2. 找到自己的科学工具提供的本地代理端口，如下所示：
   <img src="C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923002235639.png" alt="image-20240923002235639" style="zoom:67%;" />
3. 在linux服务器上，输入clash，此时ip仍然是校园VPN的虚拟ip，但是端口需要替换成自己clash的本地代理ip
4. 查看是否可以科学上网

![image-20240923002428123](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923002428123.png)

如果显示可以科学上网，那么说明配置没问题。

5. 输入senv，并执行对应的python文件
   ![image-20240923002634074](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923002634074.png)

到此，问题解决。

需要注意的是，有的clash第三方客户端又有LAN代理屏蔽的默认选项，此时你需要将它打开，如下所示：

![image-20240923002531478](C:\Users\11565\AppData\Roaming\Typora\typora-user-images\image-20240923002531478.png)