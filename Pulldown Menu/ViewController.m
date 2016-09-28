//
//  ViewController.m
//  Pulldown Menu
//
//  Created by admin on 9/27/16.
//  Copyright © 2016 zhengxinxin. All rights reserved.
//

#import "ViewController.h"
#import "MenuView.h"
#define ScreenWidth (self.view.frame.size.width)
#define ScreenHeight (self.view.frame.size.height)
@interface ViewController ()<SelecteMenuDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *menuBtn;
@property (strong, nonatomic) MenuView *menuV;
@property (assign, nonatomic) BOOL flag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.flag = NO;
    self.menuV = [[MenuView alloc]initWithFrame:CGRectMake(ScreenWidth - 110, 74, 100, 300)];
    self.menuV.hidden = YES;
    self.menuV.menuDelegate = self;
    [self.menuV createMenuBtnCount:4 buttonTitle:@[@"red",@"green",@"yellow",@"blue"] backgroundColor:@[[UIColor redColor],[UIColor greenColor],[UIColor yellowColor],[UIColor blueColor]]];
    [self.view addSubview:self.menuV];
}
- (IBAction)menuBtnAction:(id)sender {
    if (self.flag) {
        self.flag = NO;
        self.menuV.hidden = YES;
    }else {
        self.flag = YES;
        self.menuV.hidden = NO;
    }
}
- (void)dealWithClickBtn:(UIButton *)sender {
    if (sender.tag == 100) {
        self.view.backgroundColor = [UIColor redColor];
    }
    if (sender.tag == 101) {
        self.view.backgroundColor = [UIColor greenColor];
    }
    if (sender.tag == 102) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
    if (sender.tag == 103) {
        self.view.backgroundColor = [UIColor blueColor];
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
