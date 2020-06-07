这是一套关于书籍《音视频开发进阶》的代码笔记的一部分，记录学习的过程

本篇是在编译iOS环境下的lame时需要的配置脚本

脚本里面写了很多注释，这里是方便知道对应关系这样写，但是会影响命令的执行，所以运行时要调整一下注释的位置.

在我们编译出不同指令架构下的静态库文件后，我们需要进行合并

```
lipo -create xxx.a yyy.a -output zzz.a
```

合并完成后，我们可以通过如下命令查看静态库的信息

```
file zzz.a
```
