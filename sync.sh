# sync.sh
# 该脚本用来在另外一台机器上同步远程的备份，必须要保证当前的文件夹和远程仓库名一致
git init
git checkout -b hexo
git remote add origin git@github.com:zachaxy/zachaxy.github.io.git
npm install hexo
git pull origin hexo
# 上面是将远程的hexo分支与当前(本地hexo分支)合并
# 下面是为本地hexo与origin/hexo 建立追踪关系，这也publish.sh中就可以直接git push
git branch --set-upstream-to origin/hexo
npm install

