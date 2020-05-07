//
//  DLBaseNavViewController.m
//  DLNav
//
//  Created by 董雷 on 2019/7/19.
//  Copyright © 2019 董雷. All rights reserved.
//

#import "DLBaseNavViewController.h"
#import "DLHideNavController.h"

@interface DLBaseNavViewController ()<UINavigationControllerDelegate,UIGestureRecognizerDelegate>

@end

@implementation DLBaseNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    //如果控制器遵守了DLNoNav协议，则需要隐藏导航栏
    BOOL noNav = [[viewController class] conformsToProtocol:@protocol(DLNoNav)];
    
    //隐藏导航栏后会导致边缘右滑返回的手势失效，需要重新设置一下这个代理
    self.interactivePopGestureRecognizer.delegate = self;
    
    //设置控制器是否要隐藏导航栏
    [self setNavigationBarHidden:noNav animated:YES];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    return self.childViewControllers.count > 1;
}
@end
