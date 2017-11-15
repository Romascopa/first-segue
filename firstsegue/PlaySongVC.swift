//
//  PlaySongVC.swift
//  firstsegue
//
//  Created by Lance Robbins on 11/15/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {
    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String{
        get{
            return _selectedSong
        }
        set{
            _selectedSong = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songTitleLbl.text = selectedSong

    }

   
}
