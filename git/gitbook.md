# Gitbook、Github Pages

## Gitbook 
### 常见命令

1. `gitbook init` 初始化配置

2. `gitbook install` 安装插件

3. `gitbook serve` 本地预览


### gitbook 插件配置

- 教程链接：http://t.zoukankan.com/snowdreams1006-p-10662585.html
- 常见插件：https://www.mapull.com/gitbook/comscore/custom/plugin/common/alerts.html

[点此查看此 Gitbook 配置地址 ](https://github.com/JiranHub/learning/blob/master/book.json)


<br>

## Gitbook + Github Pages

利用 `Github Pages`实现静态网页直接部署能力，利用`gitbook` 可实现文章分享能力

### 步骤

1.首先创建 `github pages`，教程：[https://docs.github.com/cn/pages/getting-started-with-github-pages](https://docs.github.com/cn/pages/getting-started-with-github-pages)


2.配置 `github action`，实现 `git push` 即可自动打包部署 `gitbook` 无需本地 `gitbook build` 

教程地址：[https://zanderzhao.github.io/gitbook-action/](https://zanderzhao.github.io/gitbook-action/)

> [!TIP|style:flat|label: Tips: |iconVisibility:hidden]
> 注意教程中token的配置; 另外主分支必须使用`master`, 使用`main`作为主分支则会编译失败，注意避坑


```yml
# Sample workflow for building and deploying a gitbook site to GitHub Pages
name: 'Gitbook Action Build'

on:
  push:
    branches:
      - master  # trigger branch

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
permissions:
  contents: read
  pages: write
  id-token: write

# Allow one concurrent deployment
concurrency:
  group: "pages"
  cancel-in-progress: true

jobs:
  # Build job
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout action
        uses: actions/checkout@v2
      - name: Gitbook Action
        uses: zanderzhao/gitbook-action@v1.2.4
        with:
          token: ${{ secrets.WORKFLOW_PERSONAL_TOKEN }}
```

3.`settings-pages-Build and deployment-Source` 设置为 `Deploy from a branch`，然后将分支改为 `gh-pages /(root)`

4.finish