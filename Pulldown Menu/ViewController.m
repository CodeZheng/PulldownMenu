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
- (void)firstBtn {
    self.view.backgroundColor = [UIColor redColor];
}
- (void)secondBtn {
    self.view.backgroundColor = [UIColor greenColor];
}
- (void)thirdBtn {
    self.view.backgroundColor = [UIColor yellowColor];
}
- (void)forthBtn {
    self.view.backgroundColor = [UIColor blueColor];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
