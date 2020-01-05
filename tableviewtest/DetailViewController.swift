//
//  DetailViewController.swift
//  tableviewtest
//
//  Created by Saydur on 5/1/20.
//  Copyright © 2020 SAYDUR. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    var video: Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let video = self.video{
            videoImageView.image = video.image
            videoTitle.text = video.title
        }
    }
    

    

}
