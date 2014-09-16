//
//  DCNViewController.m
//  HelloCocoapods
//
//  Created by Peter Shearer on 9/15/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "DCNViewController.h"
#import "MBProgressHUD.h"

@interface DCNViewController ()

@end

@implementation DCNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonWasClicked:(UIButton *)sender {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"Doing something very important";
    
    [self performSelector:@selector(closeHUD) withObject:self afterDelay:3.0];
}

- (void) closeHUD {
    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
}

@end
