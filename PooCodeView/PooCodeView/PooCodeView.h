//
//  PooCodeView.h
//  Code
//
//  Created by 韩俊强 7/2/2016.
//  Copyright (c) 韩俊强 7/2/2016. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PooCodeView : UIView

/**
 初始化

 @param frame frame description
 @param changeArr 随机内容,字符数组如:@[@"a",@"F",@"A",@"1",@"0"];
 @return return value description
 */
- (id)initWithFrame:(CGRect)frame andChangeArray:(NSArray *)changeArr;

/**
PooCodeView:1.随机内容(默认由0~9与26个大小写字母随机组合);2.文本颜色(默认黑色);3.字体大小(默认20);4.获取当前验证码等;
*/
@property (nonatomic, strong) UIColor *textColor;             // 文本颜色
@property (nonatomic, assign) int textSize;                   // 字体大小
@property (nonatomic, retain) NSMutableString * changeString; // 验证码

// 刷新随机验证码
- (void)changeCode;

@end
