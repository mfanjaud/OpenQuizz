//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Marion FANJAUD on 17/03/2018.
//  Copyright © 2018 Marion FANJAUD. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    enum Style {
        case correct, incorrect, standard
    }
    
    @IBOutlet private var label : UILabel!
    @IBOutlet private var icon: UIImageView!

    var title = ""{
        didSet{
            label.text = title
        }
    }
    
    var style : Style = .standard {
        didSet{
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
            icon.image = #imageLiteral(resourceName: "Icon Correct")
            icon.isHidden = false
            backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1)
        case .incorrect:
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
            backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1)
        case .standard:
            icon.isHidden = true
            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1)
        }
    }
    
}
