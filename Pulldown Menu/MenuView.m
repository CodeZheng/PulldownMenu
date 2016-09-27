//
//  MenuView.m
//  pulldown menu
//
//  Created by admin on 9/26/16.
//  Copyright © 2016 zhengxinxin. All rights reserved.
//

#import "MenuView.h"
#define BtnWidth (self.frame.size.width -10)
#define BtnHeight ((self.frame.size.height - 50) / 4)
@implementation MenuView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        //btn1
        self.btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn1.frame = CGRectMake(5, 10, BtnWidth, BtnHeight);
        [self.btn1 setTitle:@"Red" forState:UIControlStateNormal];
        [self.btn1 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [self.btn1 addTarget:self action:@selector(btn1Action) forControlEvents:UIControlEventTouchUpInside];
        self.btn1.backgroundColor = [UIColor redColor];
        self.btn1.layer.cornerRadius = 5;
        [self addSubview:self.btn1];
        //btn2
        self.btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn2.frame = CGRectMake(5, 20 + BtnHeight, BtnWidth, BtnHeight);
        [self.btn2 setTitle:@"Green" forState:UIControlStateNormal];
        [self.btn2 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [self.btn2 addTarget:self action:@selector(btn2Action) forControlEvents:UIControlEventTouchUpInside];
        self.btn2.backgroundColor = [UIColor greenColor];
        self.btn2.layer.cornerRadius = 5;
        [self addSubview:self.btn2];
        //btn3
        self.btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn3.frame = CGRectMake(5, 30 + 2 * BtnHeight, BtnWidth, BtnHeight);
        [self.btn3 setTitle:@"Yellow" forState:UIControlStateNormal];
        [self.btn3 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [self.btn3 addTarget:self action:@selector(btn3Action) forControlEvents:UIControlEventTouchUpInside];
        self.btn3.backgroundColor = [UIColor yellowColor];
        self.btn3.layer.cornerRadius = 5;
        [self addSubview:self.btn3];
        //btn4
        self.btn4 = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btn4.frame = CGRectMake(5, 40 + 3 * BtnHeight, BtnWidth, BtnHeight);
        [self.btn4 setTitle:@"blue" forState:UIControlStateNormal];
        [self.btn4 setTitleColor:[UIColor grayColor] forState:UIControlStateHighlighted];
        [self.btn4 addTarget:self action:@selector(btn4Action) forControlEvents:UIControlEventTouchUpInside];
        self.btn4.backgroundColor = [UIColor blueColor];
        self.btn4.layer.cornerRadius = 5;
        [self addSubview:self.btn4];
    }
    return self;
}
- (void)btn1Action {
    if ([self.menuDelegate respondsToSelector:@selector(firstBtn)]) {
        [self.menuDelegate firstBtn];
    }
}
- (void)btn2Action {
    if ([self.menuDelegate respondsToSelector:@selector(secondBtn)]) {
        [self.menuDelegate secondBtn];
    }
}
- (void)btn3Action {
    if ([self.menuDelegate respondsToSelector:@selector(thirdBtn)]) {
        [self.menuDelegate thirdBtn];
    }
}
- (void)btn4Action {
    if ([self.menuDelegate respondsToSelector:@selector(forthBtn)]) {
        [self.menuDelegate forthBtn];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
