//
//  ViewController.m
//  PooCodeView
//
//  Created by 韩俊强 on 2017/2/7.
//  Copyright © 2017年 HaRi. All rights reserved.
//

#import "ViewController.h"
#import "PooCodeView.h"

@interface ViewController ()

@property (nonatomic, strong) PooCodeView *pooCodeView;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //1.默认
    _pooCodeView = [[PooCodeView alloc] initWithFrame:CGRectMake(10, 100, 120, 50) andChangeArray:nil];
    [self.view addSubview:_pooCodeView];
    
    //2.自定义
    NSArray *randomArr = @[@"H",@"j",@"q",@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
    _pooCodeView = [[PooCodeView alloc] initWithFrame:CGRectMake(140, 100, 120, 50) andChangeArray:randomArr];
    
    //注意:文字高度不能大于poocodeview高度,否则crash
    _pooCodeView.textSize = 25;
    
    //不设置为blackColor
    _pooCodeView.textColor = [UIColor redColor];
    
    [self.view addSubview:_pooCodeView];
}

/** 验证:不区分字母大小写 **/
- (IBAction)judgeString:(id)sender
{
    int result1 = [_pooCodeView.changeString compare:_myTextField.text options:NSCaseInsensitiveSearch];
    
    if ((_pooCodeView.changeString.length == _myTextField.text.length ) && (result1 == 0)) {
        NSLog(@"匹配正确");
    }
    else{
        NSLog(@"验证码错误");
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [_pooCodeView changeCode];
        });
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
