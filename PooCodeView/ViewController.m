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
    // Do any additional setup after loading the view, typically from a nib.
    
    _pooCodeView = [[PooCodeView alloc] initWithFrame:CGRectMake(50, 100, 82, 32)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [_pooCodeView addGestureRecognizer:tap];
    [self.view addSubview:_pooCodeView];
}

// 验证 字母不区分大小写
- (IBAction)judgeString:(id)sender
{
    int result1 = [_pooCodeView.changeString compare:_myTextField.text options:NSCaseInsensitiveSearch];
    if (result1 == 1) {
        NSLog(@"验证码错误");
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [_pooCodeView changeCode];
        });
        
    }else{
        NSLog(@"匹配正确");
    }
}

- (void)tapClick:(UITapGestureRecognizer*)tap{
    [_pooCodeView changeCode];
    NSLog(@"%@",_pooCodeView.changeString);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
