//
//  DCNViewController.m
//  HelloObjectiveC
//
//  Created by Peter Shearer on 9/5/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "DCNViewController.h"

@interface DCNViewController ()
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

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
    NSString *title = [sender currentTitle];
    UIColor *newBackground = [UIColor whiteColor];
    
    if ([title isEqualToString:@"Red"]) {
        newBackground = [UIColor redColor];
    }
    
    if ([title isEqualToString:@"Blue"]) {
        newBackground = [UIColor blueColor];
    }
    
    if ([title isEqualToString:@"Green"]) {
        newBackground = [UIColor greenColor];
    }
    
    self.view.backgroundColor = newBackground;
    _outputLabel.text = [NSString stringWithFormat:@"The screen is now %@.", title];
}

@end
