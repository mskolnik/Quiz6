//
//  Q5Task.m
//  Quiz6
//
//  Created by MariAnne Skolnik on 3/28/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import "Q5Task.h"

@implementation Q5Task

- (id) init
{
    return [self initWithTaskUrgency:0 dueDateFromToday:0];
}

- (id) initWithTaskUrgency:(float)urgency dueDateFromToday:(int)daysLater
{
    self = [super init];
    if (self) {
        [self setTaskName:[[NSString alloc] initWithFormat:@"Task %.0f", urgency]];
        [self setTaskUrgency:urgency];
        [self setTaskDueDate:[NSDate dateWithTimeIntervalSinceNow:daysLater*60.0*60.0*24.0]];
    }
    return self;
}

+ (id) randomTask
{
    // 0 to 9 urgency
    float urgencyNum = arc4random_uniform(9);
    // Today to 5 days from now
    int daysLater = arc4random_uniform(5);
    Q5Task *randomTask = [[self alloc] initWithTaskUrgency:urgencyNum dueDateFromToday:daysLater];
    return randomTask;
}

@end
