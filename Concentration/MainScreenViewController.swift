//
//  MainScreenViewController.swift
//  Concentration
//
//  Created by Justin Vargas on 7/31/19.
//  Copyright © 2019 Justin Vargas. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    
    @IBOutlet weak var startNewGame: UIButton!
    
    @IBOutlet weak var leaderboards: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame.layer.cornerRadius = 10;
        startNewGame.clipsToBounds = true;
        leaderboards.layer.cornerRadius = 10;
        leaderboards.clipsToBounds = true;
    }
    
    @IBAction func unwindToMainScreen(_ sender: UIStoryboardSegue){
        
    }
    

    

}
