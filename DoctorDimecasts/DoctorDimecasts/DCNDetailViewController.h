//
//  DCNDetailViewController.h
//  DoctorDimecasts
//
//  Created by Peter Shearer on 9/9/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCNEpisode.h"

@interface DCNDetailViewController : UIViewController

@property (strong, nonatomic) DCNEpisode *detailItem;
- (void)setDetailItem:(DCNEpisode*) episode;

@end
