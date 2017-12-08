# sync.sh
# 该脚本用来在另外一台机器上同步远程的备份，必须要保证当前的文件夹和远程仓库名一致
git init
git checkout -b hexo
git remote add origin git@github.com:zachaxy/zachaxy.github.io.git
npm install hexo
git pull origin hexo
npm install

