//
//  PooCodeView.h
//  Code
//
//  Created by 韩俊强 7/2/2016.
//  Copyright (c) 韩俊强 7/2/2016. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PooCodeView : UIView

@property (nonatomic, retain) NSArray *changeArray;

@property (nonatomic, retain) NSMutableString *changeString;

@property (nonatomic, retain) UILabel *codeLabel;

-(void)changeCode;

@end
