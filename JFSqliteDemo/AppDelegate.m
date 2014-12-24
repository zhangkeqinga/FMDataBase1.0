//
//  AppDelegate.m
//  JFSqliteDemo
//
//  Created by Dong on 14-12-5.
//  Copyright (c) 2014年 jhony. All rights reserved.
//

#import "AppDelegate.h"

#import "PathUtilities.h"
#import "JFUtils.h"
#import "SSJDBManager.h"
#import "DT_USER.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    
//==============================================================================
    
    // IF Need database create
    [PathUtilities copyDatabaseIfNeededWithFileName:JIAFENG_DB SearchPathDirectory:NSLibraryDirectory];
    
//    DT_USER *users=[[DT_USER alloc] init];
//    users.user_name=@"zhang";
//    users.user_age=@"20";
//    users.user_account=@"zhang3";
//    users.user_password=@"222";
//    
//    [[SSJDBManager sharedInstance] insertCustomer:users];
//    [[SSJDBManager  sharedInstance] queryUserAll];

    
    
//==============================================================================
    
    
    
//    //读取文件配置信息
//    [PathUtilities copyDatabaseIfNeededWithFileName:SYSTEM_CONF_FILE SearchPathDirectory:NSLibraryDirectory];
//
//    
//    NSArray *arrayAcount= [JFUtils readLocalizedPersoanlInformation];
//    if (arrayAcount) {
//        NSLog(@"arrayAcount=%@",arrayAcount);
//    }
 
 
    
//==============================================================================
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
