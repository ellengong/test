GIT使用

**创建版本库**   git init

```

```

**连接远程仓库**    git remote add origin git@github.com:yourName/repositoryname.git

创建新分支并立即切换到该分支下

git checkout -b multi-ins-auth



从远程仓库pull文件**    git pull origin dev         //将远程主机 origin 的 dev分支拉取过来

git merge dev



1. ssh-keygen -t rsa -C "ellengong@chinamaker.net" 

2. 在目标文件夹下，git bash here

3.git clone  http://gc-git/essilorchina/nba.git

4. git init
5. git remote add origin  http://gc-git/essilorchina/nba.git

GUI过程：

1.在目标文件夹下，git gui here

2.clone existing 库

3.创建本地分支 dev

4.checkout到本地分支 dev（切换到当前dev分支工作）

5.从remote获取

6.local merge（选择库里的dev与当前的dev合并）

有冲突，auth的部分代码 与dev的 公用文件，可以保留auth的



GIT GUI连接gitlab账号问题

edit->option里设置登录邮箱账号为 gitlab账号所用邮箱，产生SSH key，复制

到gitlab 个人设置里，添加ssh key，粘贴

二、git 连接github过程：

1.**进入本地仓库目录：**

 git init 把当前目录编程本地仓库

添加文件到仓库后，git status 查看所有变动

git add -A  ：将所有的已跟踪的文件的修改与删除和新增的未跟踪的文件都添加到暂存区。

git commit -m 'message'  将暂存区里的改动给提交到本地的版本库

2**.创建远程仓库**

https://github.com/ellengong/test.git

添加sshkey

3.**本地和远程仓库的连接**

git  remote  add origin https://github.com/ellengong/test.git

输入账号密码 github 987412glL

git push origin dev  本地的仓库dev分支push到远程仓库

成功后刷新github，上传成功！！！

另一pc端：

git pull origin dev



> Git add
>
>  git add [参数] <路径>　作用就是将我们需要提交的代码从工作区添加到暂存区，就是告诉git系统，我们要提交哪些文件，之后就可以使用git commit命令进行提交了。 
>  为了方便下面都用 . 来标识路径， . 表示当前目录，路径可以修改，下列操作的作用范围都在版本库之内。
>
> git add .  
> 不加参数默认为将修改操作的文件和未跟踪新添加的文件添加到git系统的暂存区，注意不包括删除
> git add -u . 
> -u 表示将已跟踪文件中的修改和删除的文件添加到暂存区，不包括新增加的文件，注意这些被删除的文件被加入到暂存区再被提交并推送到服务器的版本库之后这个文件就会从git系统中消失了。
> git add -A . 
> -A   表示将所有的已跟踪的文件的修改与删除和新增的未跟踪的文件都添加到暂存区。
>
>
> Git commit
>
>  git commit 主要是将暂存区里的改动给提交到本地的版本库。每次使用git commit 命令我们都会在本地版本库生成一个40位的哈希值，这个哈希值也叫commit-id， 
>  commit-id 在版本回退的时候是非常有用的，它相当于一个快照,可以在未来的任何时候通过与git reset的组合命令回到这里.
>
>
> git commit -m ‘message’ 
> -m 参数表示可以直接输入后面的“message”，如果不加 -m参数，那么是不能直接输入message的，而是会调用一个编辑器一般是vim来让你输入这个message， 
> message即是我们用来简要说明这次提交的语句。
> git commit -am ‘message’ -am等同于-a -m 
> -a参数可以将所有已跟踪文件中的执行修改或删除操作的文件都提交到本地仓库，即使它们没有经过git add添加到暂存区， 
> 注意: 新加的文件（即没有被git系统管理的文件）是不能被提交到本地仓库的。
>
> 
>
>
> Git push
>
>  在使用git commit命令将修改从暂存区提交到本地版本库后，只剩下最后一步将本地版本库的分支推送到远程服务器上对应的分支了，如果不清楚版本库的构成，可以查看我的另一篇，git 仓库的基本结构。 
>  git push的一般形式为 git push <远程主机名> <本地分支名>  <远程分支名> ，例如 git push origin master：refs/for/master ，即是将本地的master分支推送到远程主机origin上的对应master分支， origin 是远程主机名。第一个master是本地分支名，第二个master是远程分支名。
>
> git push origin master 
> 如果远程分支被省略，如上则表示将本地分支推送到与之存在追踪关系的远程分支（通常两者同名），如果该远程分支不存在，则会被新建
> git push origin ：refs/for/master  
> 如果省略本地分支名，则表示删除指定的远程分支，因为这等同于推送一个空的本地分支到远程分支，等同于 git push origin –delete master
> git push origin 
> 如果当前分支与远程分支存在追踪关系，则本地分支和远程分支都可以省略，将当前分支推送到origin主机的对应分支 
> git push 
>
> 如果当前分支只有一个远程分支，那么主机名都可以省略，形如 git push，可以使用git branch -r ，查看远程的分支名
> --------------------- 

日常更新提交本地代码：

git status

git add -A

git commit -m 'comments'

git push origin dev



### create a new repository on the command line

echo "# devDocs" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ellengong/devDocs.git
git push -u origin main

### push an existing repository from the command line

git remote add origin https://github.com/ellengong/devDocs.git
git branch -M main
git push -u origin main