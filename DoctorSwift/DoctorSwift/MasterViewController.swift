//
//  MasterViewController.swift
//  DoctorSwift
//
//  Created by Peter Shearer on 9/17/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var objects = [Episode]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        objects = EpisodeRepository.getEpisodeList()
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let episode = objects[indexPath.row]
                (segue.destinationViewController as DetailViewController).detailItem = episode
            }
        }
    }

    // MARK: - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var episode = objects[indexPath.row]
        cell.textLabel?.text = episode.episodeTitle
        cell.detailTextLabel?.text = episode.episodeNumber
        
        return cell
    }
}

