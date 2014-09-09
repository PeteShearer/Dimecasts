//
//  DCNDetailViewController.m
//  DoctorDimecasts
//
//  Created by Peter Shearer on 9/9/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "DCNDetailViewController.h"

@interface DCNDetailViewController ()
- (void)configureView;
@property (weak, nonatomic) IBOutlet UILabel *episodeTitle;
@property (weak, nonatomic) IBOutlet UILabel *episodeNumber;
@property (weak, nonatomic) IBOutlet UILabel *writerName;
@property (weak, nonatomic) IBOutlet UILabel *doctorName;
@property (weak, nonatomic) IBOutlet UILabel *synopsis;
@end

@implementation DCNDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(DCNEpisode*)episode
{
    if (_detailItem != episode) {
        _detailItem = episode;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    _episodeTitle.text = _detailItem.episodeTitle;
    _episodeNumber.text = _detailItem.episodeNumber;
    _writerName.text = _detailItem.writerName;
    _doctorName.text = _detailItem.doctorName;
    _synopsis.text = _detailItem.synopsis;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
