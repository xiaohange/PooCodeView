//
//  PooCodeView.m
//  Code
//
//  Created by 韩俊强 7/2/2016.
//  Copyright (c) 韩俊强 7/2/2016. All rights reserved.
//

#import "PooCodeView.h"
#define RGBColor(r, g, b , a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define RandColor(a) RGBColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255), a)
@interface PooCodeView ()

@property (nonatomic, retain) NSArray *changeArray; // 随机内容


@end

@implementation PooCodeView

@synthesize changeArray = _changeArray;

@synthesize changeString = _changeString;


- (id)initWithFrame:(CGRect)frame andChangeArray:(NSArray *)changeArr
{
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.backgroundColor = RandColor(0.2);
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
        [self addGestureRecognizer:tap];
        
        _changeArray = changeArr;
        
        [self change];
        
    }
    return self;
}

- (void)tapClick:(UITapGestureRecognizer*)tap
{
    [self changeCode];    
}

- (void)changeCode
{
    [self change];
    [self setNeedsDisplay];
}

- (void)change
{
    if (!self.changeArray.count) {
       self.changeArray = [[NSArray alloc] initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i",@"j",@"k",@"l",@"m",@"n",@"o",@"p",@"q",@"r",@"s",@"t",@"u",@"v",@"w",@"x",@"y",@"z",nil];
    }    
    NSMutableString *getStr = [[NSMutableString alloc] initWithCapacity:5];
    
    self.changeString = [[NSMutableString alloc] initWithCapacity:6];
    for(NSInteger i = 0; i < 4; i++){
        
        NSInteger index = arc4random() % ([self.changeArray count] - 1);
        getStr = [self.changeArray objectAtIndex:index];
        
        self.changeString = (NSMutableString *)[self.changeString stringByAppendingString:getStr];
    }
}

- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];

    UIColor *color = RandColor(0.5);
    [self setBackgroundColor:color];

    NSString *text = [NSString stringWithFormat:@"%@",self.changeString];
    CGSize cSize = [@"S" sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:_textSize>0?_textSize:20],NSForegroundColorAttributeName:_textColor?_textColor:[UIColor blackColor]}];
    int width = rect.size.width / text.length - cSize.width;
    int height = rect.size.height - cSize.height;
    CGPoint point;

    float pX, pY;
    for (int i = 0; i < text.length; i++){
        
        pX = arc4random() % width + rect.size.width / text.length * i;
        pY = arc4random() % height;
        point = CGPointMake(pX, pY);
        unichar c = [text characterAtIndex:i];
        NSString *textC = [NSString stringWithFormat:@"%C", c];
        [textC drawAtPoint:point withAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:_textSize>0?_textSize:20],NSForegroundColorAttributeName:_textColor?_textColor:[UIColor blackColor]}];
    }

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 1.0);
    
    for(int cout = 0; cout < 10; cout++){
        
        color = RandColor(0.2);
        CGContextSetStrokeColorWithColor(context, [color CGColor]);
        pX = arc4random() % (int)rect.size.width;
        pY = arc4random() % (int)rect.size.height;
        CGContextMoveToPoint(context, pX, pY);
        pX = arc4random() % (int)rect.size.width;
        pY = arc4random() % (int)rect.size.height;
        CGContextAddLineToPoint(context, pX, pY);
        CGContextStrokePath(context);
    }
}

@end
