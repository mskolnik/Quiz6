//
//  Quiz6DetailViewController.h
//  Quiz6
//
//  Created by MariAnne Skolnik on 3/28/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Quiz6DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
