//
//  PlaceholderUser.h
//  HelloAFNetworking
//
//  Created by Peter Shearer on 9/24/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlaceholderUser : NSObject

@property (strong, nonatomic) NSNumber *userId;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *website;

+ (PlaceholderUser*) init: (NSDictionary*) withDictionary;

@end
