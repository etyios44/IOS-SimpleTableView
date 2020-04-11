//
//  AppDelegate.h
//  IOS-SimpleTableView
//
//  Created by eric on 11/04/2020.
//  Copyright © 2020 SLCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

