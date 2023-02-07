## 1 create a new repository on the command line

创建新仓库的命令行


```text
echo "# Source" >> README.md
// 新建一个叫README.MD的文件夹
git init
// 创建一个新的git仓库
git add README.md
// 添加文件README.md到待保存区
git commit -m "first commit"
// 添加提交代码的注释
git branch -M main
// 这是干嘛的？
git remote add origin https://github.com/nsforyou/Source.git
//关联远程仓库，在做这一步之前需要添加当前电脑的SSHkey到 github帐号下
git push -u origin main
//推送本地修改好的文件到远程仓库 main分支下。
```

## 2 push an existing repository from the command line

在命令行中推送一个已经存在的仓库
