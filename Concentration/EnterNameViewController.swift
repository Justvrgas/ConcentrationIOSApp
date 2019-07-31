//
//  EnterNameViewController.swift
//  Concentration
//
//  Created by Justin Vargas on 7/31/19.
//  Copyright © 2019 Justin Vargas. All rights reserved.
//

import UIKit

class EnterNameViewController: UIViewController {

    @IBOutlet weak var submit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submit.layer.cornerRadius = 10;
        submit.clipsToBounds = true;
        // Do any additional setup after loading the view.
    }

}
