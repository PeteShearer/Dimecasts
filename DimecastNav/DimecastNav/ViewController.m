//
//  ViewController.m
//  DimecastNav
//
//  Created by Peter Shearer on 11/20/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) returned: (UIStoryboardSegue*) segue {
    NSLog(@"We are returned");
}

@end
