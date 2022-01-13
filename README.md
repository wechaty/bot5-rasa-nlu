# Bot5 Rasa NLU

Bot5 Assistant 的 NLU 组件

## 安装

组件已经配置好，可以直接docker build然后使用。

```shell
docker build -t bot5-rasa-nlu .
```

## 训练文件准备

按照格式修改[data/intents.yml](data/intents.yml)，添加新的意图 (intent)，也支持添加新的实体 (entity)。具体格式请查阅[Rasa官方文档](https://rasa.com/docs/rasa/2.x/training-data-format)

## 启动

请暴露组件的5005端口，启动docker：

```shell
docker run -p 5005:5005 ghcr.io/wechaty/bot5-rasa-nlu:latest
```

## GitHub Actions

当前项目将会自动构建main分支到GitHub Container Registry，并在GitHub Actions上构建镜像。需要配置一个Personal Access Token，请访问[对应GitHub文档](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)查看如何获取。