//
//  MenuView.m
//  pulldown menu
//
//  Created by admin on 9/26/16.
//  Copyright © 2016 zhengxinxin. All rights reserved.
//

#import "MenuView.h"
#define BtnWidth (self.frame.size.width -10)
@implementation MenuView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
    }
    return self;
}
- (void)createMenuBtnCount:(NSInteger)count buttonTitle:(NSArray *)titleArray backgroundColor:(NSArray *)colorArray{
    NSInteger btnHeight =(self.frame.size.height - 10*(count+1)) / count;
    for (int i = 0; i < count; i++) {
        NSString *title = titleArray[i];
        UIColor *color = colorArray[i];
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:title forState:UIControlStateNormal];
        btn.backgroundColor = color;
        btn.frame = CGRectMake(5, 10*(i + 1)+i*btnHeight, BtnWidth, btnHeight);
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100 + i;
        [self addSubview:btn];
    }
}
- (void)btnAction:(UIButton *)sender {
    if ([self.menuDelegate respondsToSelector:@selector(dealWithClickBtn:)]) {
        [self.menuDelegate dealWithClickBtn:sender];
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
