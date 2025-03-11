#!/bin/bash

# 检查参数
if [ $# -lt 1 ]; then
    echo "Usage: ./new-article.sh <article-title>"
    exit 1
fi

# 获取文章标题
TITLE=$1

# 生成文件名（将空格替换为连字符，并转换为小写）
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# 创建文章文件
cp articles/templates/article-template.md "articles/drafts/$FILENAME.md"

# 替换文章标题
sed -i '' "s/文章标题/$TITLE/" "articles/drafts/$FILENAME.md"

# 设置当前日期
CURRENT_DATE=$(date +%Y-%m-%d)
sed -i '' "s/YYYY-MM-DD/$CURRENT_DATE/" "articles/drafts/$FILENAME.md"

echo "文章已创建：articles/drafts/$FILENAME.md" 