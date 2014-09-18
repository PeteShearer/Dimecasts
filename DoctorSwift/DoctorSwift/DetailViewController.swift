//
//  DetailViewController.swift
//  DoctorSwift
//
//  Created by Peter Shearer on 9/17/14.
//  Copyright (c) 2014 Peter Shearer. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var episodeName: UILabel!
    @IBOutlet weak var episodeNumber: UILabel!
    @IBOutlet weak var episodeWriter: UILabel!
    @IBOutlet weak var episodeDoctor: UILabel!


    var detailItem: Episode? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Episode = self.detailItem {
            episodeName?.text = detailItem?.episodeTitle
            episodeNumber?.text = detailItem?.episodeNumber
            episodeWriter?.text = detailItem?.writerName
            episodeDoctor?.text = detailItem?.doctorName
            detailDescriptionLabel?.text = detailItem?.synopsis
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }
}

