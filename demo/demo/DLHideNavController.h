//
//  DLHideNavController.h
//  demo
//
//  Created by 董雷 on 2020/5/7.
//  Copyright © 2020 Dong L. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DLNoNav 
//只要遵守了这个协议，该控制器就会隐藏导航栏
@end

@interface DLHideNavController : UIViewController<DLNoNav>

@end

NS_ASSUME_NONNULL_END
