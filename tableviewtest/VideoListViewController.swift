//
//  VideoListViewController.swift
//  tableviewtest
//
//  Created by SAYDUR on 1/1/20.
//  Copyright © 2020 SAYDUR. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func createArray() -> [Video] {
        
        var tempVideos: [Video] = []
        
        let video1 = Video(image: UIImage(named: "Sample1")!, title: "1st image")
        let video2 = Video(image: UIImage(named: "photo-1503023345310-bd7c1de61c7d")!, title: "2nd image")
        let video3 = Video(image: UIImage(named: "pexels-photo-414612")!, title: "3rd image")
        let video4 = Video(image: UIImage(named: "15319_1860_img_7")!, title: "4th image")
        let video5 = Video(image: UIImage(named: "images-2")!, title: "5th image")
        let video6 = Video(image: UIImage(named: "images-3")!, title: "6th image")
        let video7 = Video(image: UIImage(named: "images-4")!, title: "7th image")
        let video8 = Video(image: UIImage(named: "images-5")!, title: "8th image")
        let video9 = Video(image: UIImage(named: "images-6")!, title: "9th image")
        let video10 = Video(image: UIImage(named: "images-7")!, title: "10th image")
        let video11 = Video(image: UIImage(named: "images")!, title: "11th image")
        let video12 = Video(image: UIImage(named: "hatwali")!, title: "12th image")
       
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        tempVideos.append(video7)
        tempVideos.append(video8)
        tempVideos.append(video9)
        tempVideos.append(video10)
        tempVideos.append(video11)
        tempVideos.append(video12)
        return tempVideos
    }
    //Code for Showing clicked image number in log
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(videos[indexPath.row].title)
        
    }

}

extension VideoListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt intdexPath: IndexPath)-> UITableViewCell {
        let video = videos[intdexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
        
        
        
    }
}
