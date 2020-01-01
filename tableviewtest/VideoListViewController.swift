//
//  VideoListViewController.swift
//  tableviewtest
//
//  Created by SAYDUR on 1/1/20.
//  Copyright © 2020 SAYDUR. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    var videos: [Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "Sample1")!, title: "First image")
        let video2 = Video(image: UIImage(named: "photo-1503023345310-bd7c1de61c7d")!, title: "second image")
        let video3 = Video(image: UIImage(named: "pexels-photo-414612")!, title: "3rd image")
       
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        return tempVideos
    }

}

extension VideoListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return videos.count
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt intdexPath: IndexPath)-> UITableViewCell {
        let video = videos[intdexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoCell
        
        <#code#>
    }
}
