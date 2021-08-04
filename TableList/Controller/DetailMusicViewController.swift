//
//  DetailMusicViewController.swift
//  TableList
//
//  Created by baiba.vaisle on 04/08/2021.
//

import UIKit

class DetailMusicViewController: UIViewController {

    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil {
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " " + song.album
            trackNameLabel.numberOfLines = 0
        }
    }


}
