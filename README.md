# webview-screenshot
本demo，主要解决我们在实际应用中对webview截图遇到的困难，
所有的截图都是用的这个思路，包括高德地图，百度地图和滴滴打车，
生成一张图片，都是截图然后保存成一张图片！

思路：一个界面可见的webview，一个不可件的webview，加载同样的内容。
可见的加载完成，在finish代理方法，获取到contentsize创建不可见webview，之后，等到不可兼得webview也加载完成，就可以直接截图了！
