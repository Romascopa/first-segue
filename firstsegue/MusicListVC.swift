//
//  MusicListVC.swift
//  firstsegue
//
//  Created by Lance Robbins on 11/15/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        backBtn.backgroundColor = UIColor.blue
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func PlaySongPressed(_ sender: Any) {
        var song = "You're Welcome!"
        
        performSegue(withIdentifier: "PlaySongVC", sender: song)
    }
    
    // called before viewDidLoad on next segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // make sure the segue VC is correct before doing preparation
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String{
                destination.selectedSong = song
            }
        }
    }
}
