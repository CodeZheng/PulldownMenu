//
//  MenuView.h
//  pulldown menu
//
//  Created by admin on 9/26/16.
//  Copyright © 2016 zhengxinxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SelecteMenuDelegate <NSObject>

- (void)dealWithClickBtn:(UIButton *)sender;

@end

@interface MenuView : UIView

@property (weak, nonatomic) id<SelecteMenuDelegate> menuDelegate;

- (void)createMenuBtnCount:(NSInteger)count buttonTitle:(NSArray *)titleArray backgroundColor:(NSArray *)colorArray;
@end
