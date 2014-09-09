//
//  DCNMasterViewController.m
//  DoctorDimecasts
//
//  Created by Peter Shearer on 9/9/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

#import "DCNMasterViewController.h"

#import "DCNDetailViewController.h"
#import "DCNEpisodeRepository.h"
#import "DCNEpisode.h"

@interface DCNMasterViewController ()

@property (nonatomic, strong) NSArray* objects;

@end

@implementation DCNMasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _objects = [DCNEpisodeRepository getEpisodeList];
    [self.tableView reloadData];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_objects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    DCNEpisode *episode = _objects[indexPath.row];
    cell.textLabel.text = episode.episodeTitle;
    cell.detailTextLabel.text = episode.episodeNumber;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DCNEpisode *episode = _objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:episode];
    }
}

@end
