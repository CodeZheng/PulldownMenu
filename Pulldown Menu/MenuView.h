//
//  MenuView.h
//  pulldown menu
//
//  Created by admin on 9/26/16.
//  Copyright © 2016 zhengxinxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelecteMenuDelegate <NSObject>

- (void)firstBtn;
- (void)secondBtn;
- (void)thirdBtn;
- (void)forthBtn;

@end

@interface MenuView : UIView
@property (strong, nonatomic) UIButton *btn1;
@property (strong, nonatomic) UIButton *btn2;
@property (strong, nonatomic) UIButton *btn3;
@property (strong, nonatomic) UIButton *btn4;
@property (weak, nonatomic) id<SelecteMenuDelegate> menuDelegate;
@end
