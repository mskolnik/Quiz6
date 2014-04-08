//
//  TaskStore.m
//  Quiz6
//
//  Created by MariAnne Skolnik on 3/28/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import "TaskStore.h"

#import "TaskStore.h"
#import "Q5Task.h"

@implementation TaskStore

- (id) init
{
    self = [super init];
    if (self)
    {
        allTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allTasks
{
    return allTasks;
}

- (Q5Task *)createTask
{
    Q5Task *task = [Q5Task randomTask];
    [allTasks addObject:task];
    return task;
}

- (Q5Task *)createTaskWithUrgency:(float)urgency
{
    Q5Task *task = [[Q5Task alloc] initWithTaskUrgency:urgency dueDateFromToday:urgency];
    [allTasks addObject:task];
    return task;
}

- (void)removeTask:(Q5Task *)task
{
    [allTasks removeObjectIdenticalTo:task];
}

+ (id) allocWithZone:(struct _NSZone *)zone
{
    return [self taskStore];
}

+ (TaskStore *)taskStore
{
    // static so it doesn't change
    static TaskStore *taskStore = nil;
    if (!taskStore) {
        taskStore = [[super allocWithZone:nil] init];
    }
    return taskStore;
}

@end