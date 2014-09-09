//
//  DCNEpisode.h
//  DoctorDimecasts
//
//  Created by Peter Shearer on 9/9/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DCNEpisode : NSObject

@property (nonatomic, strong) NSString *episodeTitle;
@property (nonatomic, strong) NSString *writerName;
@property (nonatomic, strong) NSString *doctorName;
@property (nonatomic, strong) NSString *episodeNumber;
@property (nonatomic, strong) NSString *synopsis;

@end
