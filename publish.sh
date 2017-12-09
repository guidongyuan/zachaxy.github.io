# 该脚本用来将md转换为html并发布，同时将md源文件上传
hexo g -d
git add .
git commit -m "add source file"
# 待完善，因为追踪关系不一定确定
git push
