//
//  Ex09AppDelegate.h
//  Excercise09
//
//  Created by TPG on 3/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RecipeTableViewController;

@interface Ex09AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) NSMutableArray *listOfRecipes;
@property (nonatomic, retain) RecipeTableViewController *tvc;
@property (nonatomic, retain) UINavigationController *nc;
@end
