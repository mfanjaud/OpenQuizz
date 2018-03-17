//
//  ViewController.swift
//  OpenQuizz
//
//  Created by Marion FANJAUD on 17/03/2018.
//  Copyright © 2018 Marion FANJAUD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let game = Game()
        game.refresh()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

