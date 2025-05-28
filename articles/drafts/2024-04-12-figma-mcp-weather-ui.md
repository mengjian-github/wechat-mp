# 我用Figma MCP实现了超好看的天气界面，产品和设计师有福了！

前阵子在折腾MCP，今天终于有机会和大家聊聊Figma MCP这个神器。

说实话，可能有些小伙伴已经听过甚至用过它，但我还是想说一句：别小看MCP！它对产品、设计师、前端开发，真的能带来不小的提升。

这次，我就用Figma MCP，撸了一个超好看的天气应用界面（见上图）。

## MCP到底是什么？（for小白）

你可以把MCP想象成AI模型的"万能转换器"或者"USB-C接口"。就像USB-C让各种设备都能连在一起，MCP也让AI模型能标准化地对接不同数据源和工具。

## 开始前的准备

1. 先装好Nodejs：https://nodejs.org/zh-cn
2. 本地下载并安装Cursor：https://www.cursor.com/

## 安装Figma MCP

- 打开Cursor，进入Settings
- 找到MCP面板，点"添加MCP Server"
- 在弹出的json文件里加上：

```json
 "Framelink Figma MCP": {
  "command": "npx",
  "args": ["-y", "figma-developer-mcp", "--figma-api-key=YOUR-KEY", "--stdio"]
},
```

- 保存，然后去Figma官网：https://www.figma.com
- 头像-Settings-Security，创建新Token，勾选所有权限，起个名字，拿到Token
- 把Token填到刚刚配置文件的"YOUR-KEY"那里
- 保存，回到Cursor，看到MCP Server变绿，搞定！

## 还原设计稿效果

直接在Figma设计稿里，拷贝你想要的图层，右键「Copy link to selection」。

然后在Cursor里输入：

```
@https://www.figma.com/design/xxxxx/Weather-App-UI-Design--Community-?node-id=2-1403&t=NDhMocYIvzEu6wyb-4 

帮我实现上述Figma面板的效果，要求：
- 不要访问整个Figma文件，要传入node参数进去
- 代码使用React技术栈，存放在demo项目下
- 如果有图片，或者CSS难以实现的Figma元素，帮我下载对应的图片
- 需要仔细分析Figma元素属性，保证最终的效果还原度
- 写完代码后，直接启动预览
```

我第一次跑的时候，没跑起来，报错了。没关系，直接丢给Cursor让它自己解决。

很快就得到了第一版：

界面看起来很不错，主要结构和Tab切换都还原了，但还原度还没到100%。

## 细节优化

我又给它提了几个小问题，Prompt如下：

- 房子的图片需要还原
- 底部的Button、Map、List三个图标需要还原
- 可以重新访问画板数据，可以重新下载图片

它又改了一版，底部图标终于对上了。

这个还原效果我给70分，想再精细点就得对照设计稿和代码细节慢慢抠了。

## 再还原一个页面

同样的方法，换个node-id：

```
@https://www.figma.com/design/xxxx/Weather-App-UI-Design--Community-?node-id=55-2454&t=R3RJ2QsPeVSzklzH-4 

你帮我再实现一下这个界面，要求：
- 不要访问整个Figma文件，要传入node参数进去
- 代码使用React技术栈，存放在demo项目下
- 如果有图片，或者CSS难以实现的Figma元素，帮我下载对应的图片
- 需要仔细分析Figma元素属性，保证最终的效果还原度
```

这次还原效果能打80分，只有一些文字、icon和异形需要再处理下。

## 体验总结：60分的还原水平，实际能提效60%

体验下来，Figma MCP目前大概能还原60分的效果。别小看这60分，意味着日常工作能提效60%！

如果你是设计师或产品，把设计稿做规范、简单一些，80、90分的还原完全没问题。

其实Figma MCP本质上就两个接口：一个拿画板源数据，一个下载图片。只要这两个原子能力，页面就能跑起来，真的很震撼。

## 设计稿反推需求文档

模型理解了设计稿数据后，产品经理还能让它自动完善需求文档。

我用的Prompt很简单：

"根据这个页面设计，帮我完成需求文档的撰写"

如果有完整的需求文档格式要求，也可以直接丢给它，模型给到的文档一般会更细致，便于开发理解和实现。

## 期待80分的效果

我之前搞过一段时间D2C（Design To Code），其实可以用很多工程手段提升还原度。

希望未来有更多成熟的D2C平台加入MCP生态，这样设计稿还原至少能到80分，真正做到普惠大众。

希望今天的分享对你有帮助，我们下期再见！

---
> 欢迎关注我的公众号「孟健AI编程」，获取更多AI编程相关的内容。 