//
//  AppDelegate.m
//  iOSStudy
//
//  Created by 郭祥瑞 on 2023/8/8.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 创建 UIWindow
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // 设置 UIWindow 的背景颜色
    self.window.backgroundColor = UIColor.whiteColor;
    
    // 创建 HomeViewController
    ViewController *homeVC = [[ViewController alloc] init];
    // 设置 rootViewController
    self.window.rootViewController = homeVC;
    
    // 让 window 成为 keyWindow (主窗口)，并且保持可见
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
