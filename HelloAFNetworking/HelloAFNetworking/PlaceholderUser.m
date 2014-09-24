//
//  PlaceholderUser.m
//  HelloAFNetworking
//
//  Created by Peter Shearer on 9/24/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "PlaceholderUser.h"

@implementation PlaceholderUser

+ (PlaceholderUser*) init: (NSDictionary*) withDictionary {
    PlaceholderUser *user = [[PlaceholderUser alloc]init];
    
    user.userId = [withDictionary objectForKey:@"id"];
    user.name = [withDictionary objectForKey:@"name"];
    user.userName = [withDictionary objectForKey:@"username"];
    user.email = [withDictionary objectForKey:@"email"];
    user.phone = [withDictionary objectForKey:@"phone"];
    user.website = [withDictionary objectForKey:@"website"];
    
    return user;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"Id: %@, Name: %@, UserName: %@, Email: %@, Phone: %@, Website %@", self.userId,
            self.name, self.userName, self.email, self.phone, self.website];
}

@end
