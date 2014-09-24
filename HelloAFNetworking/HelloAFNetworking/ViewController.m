//
//  ViewController.m
//  HelloAFNetworking
//
//  Created by Peter Shearer on 9/24/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "PlaceholderUser.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *users;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getUsers];
}

- (void) getUsers {
    
    NSString *urlString = @"http://jsonplaceholder.typicode.com/users/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSDictionary *dict = (NSDictionary*)responseObject;
        NSMutableArray *array = [[NSMutableArray alloc]init];
        
        for (id innerDict in dict) {
            PlaceholderUser *user = [PlaceholderUser init:innerDict];
            [array addObject:user];
        }
        
        self.users = array;
        [self outputUsers];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"This failed because %@", error.description);
    }];
    
    [operation start];
    
}

-(void) outputUsers {
    for (id user in self.users) {
        PlaceholderUser *placeholderUser = (PlaceholderUser*)user;
        NSLog(@"%@", placeholderUser);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
