//
//  TaskStore.h
//  Quiz6
//
//  Created by MariAnne Skolnik on 3/28/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Q5Task.h"

@interface TaskStore : NSObject
{
    NSMutableArray *allTasks;
}
+(TaskStore *) taskStore;
-(NSMutableArray *) allTasks;

-(Q5Task *)createTask;
-(void)removeTask:(Q5Task *)task;
-(Q5Task *)createTaskWithUrgency:(float)urgency;

@end