//
//  Q5Task.h
//  Quiz6
//
//  Created by MariAnne Skolnik on 3/28/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Q5Task : NSObject

+ (id) randomTask;

- (id) initWithTaskUrgency:(float)urgency
          dueDateFromToday:(int)daysLater;

@property (nonatomic, copy) NSString *taskName;
@property (nonatomic) float taskUrgency;
@property (nonatomic, strong) NSDate *taskDueDate;

@end
