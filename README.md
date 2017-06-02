# PooCodeView
##图形验证码，本地校验图形验证码，随机验证码图文校验，图文校验

## Installation
Drag all source files under floder `PooCodeView` to your project.

## Usage

```
#import "PooCodeView.h"
@property (nonatomic, strong) PooCodeView *pooCodeView;

```
```
//1.默认
    _pooCodeView = [[PooCodeView alloc] initWithFrame:CGRectMake(10, 100, 120, 50) andChangeArray:nil];
    [self.view addSubview:_pooCodeView];
```

```
//2.自定义
    NSArray *randomArr = @[@"H",@"j",@"q",@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
    _pooCodeView = [[PooCodeView alloc] initWithFrame:CGRectMake(140, 100, 120, 50) andChangeArray:randomArr];
    
    //注意:文字高度不能大于poocodeview高度,否则crash
    _pooCodeView.textSize = 25;
    
    //不设置为blackColor
    _pooCodeView.textColor = [UIColor redColor];
    
    [self.view addSubview:_pooCodeView];
```
## Other
[JQTumblrHud-高仿Tumblr App 加载指示器hud](https://github.com/xiaohange/JQTumblrHud)

[JQScrollNumberLabel：仿tumblr热度滚动数字条数](https://github.com/xiaohange/JQScrollNumberLabel)

[TumblrLikeAnimView-仿Tumblr点赞动画效果](https://github.com/xiaohange/TumblrLikeAnimView)

[JQMenuPopView-仿Tumblr弹出视图发音频、视频、图片、文字的视图](https://github.com/xiaohange/JQMenuPopView)

## Star

[CSDN博客](http://blog.csdn.net/qq_31810357) 

iOS开发者交流群：446310206 喜欢就❤️❤️❤️star一下吧！你的支持是我更新的动力！ Love is every every every star! Your support is my renewed motivation!


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).