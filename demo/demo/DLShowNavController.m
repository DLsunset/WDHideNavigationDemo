//
//  DLShowNavController.m
//  demo
//
//  Created by 董雷 on 2020/5/7.
//  Copyright © 2020 Dong L. All rights reserved.
//

#import "DLShowNavController.h"
#import "DLHideNavController.h"
@interface DLShowNavController ()

@end

@implementation DLShowNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(40, 100, 100, 100)];
    [btn1 setTitle:@"有导航栏" forState:UIControlStateNormal];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(pushToNavVc:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *btn2 = [[UIButton alloc] initWithFrame:CGRectMake(180, 100, 100, 100)];
    [btn2 setTitle:@"没导航栏" forState:UIControlStateNormal];
    [self.view addSubview:btn2];
    [btn2 addTarget:self action:@selector(pushToNoneNavVc:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)pushToNavVc:(UIButton *)sender {
    DLShowNavController *vc = [[DLShowNavController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)pushToNoneNavVc:(UIButton *)sender {
    
    DLHideNavController *vc = [[DLHideNavController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
