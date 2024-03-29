//
//  Ex09AppDelegate.m
//  Excercise09
//
//  Created by TPG on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ex09AppDelegate.h"
#import "RecipeTableViewController.h"

@implementation Ex09AppDelegate

@synthesize window;// = _window;
@synthesize listOfRecipes;// = _listOfRecipes;
@synthesize tvc;
@synthesize nc;

- (void)dealloc
{
    [nc release];
    [tvc release];
    [listOfRecipes release];
    [window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.window.backgroundColor = [UIColor whiteColor];
    
    // My Implementation:
    listOfRecipes = [[NSMutableArray alloc] init];
    [listOfRecipes addObject:@"Recipe1"];
    [listOfRecipes addObject:@"Recipe2"];
    [listOfRecipes addObject:@"Recipe3"];
    [listOfRecipes addObject:@"Recipe4"];
    [listOfRecipes addObject:@"Recipe5"];
    
    nc = [[UINavigationController alloc] init];
    tvc = [[RecipeTableViewController alloc] initWithStyle:UITableViewStylePlain];
    tvc.appDelegate = self;
    
    [nc pushViewController:tvc animated:NO];
  
    [self.window addSubview:nc.view];
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
