//
//  ViewController.swift
//  AboutMeBasic
//
//  Created by Carlotta Chen on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var bioLabel: UILabel!

    
    func setUpAboutMe(){
        nameLabel.text = "Carlotta Chen"
        titleLabel.text = "About Me: Software Dev"
        ageLabel.text = "Age: 29"
        profileImageView.image = UIImage(named: "self")
        bioLabel.text = "Autobiography: I graduated from the University of Oregon in 2014, then worked in software QA for several years.  I've also gone back to school to study computer science a bit, then started this bootcamp.  During the last few years, I've helped manage a family business but decided ultimately that is not what I want to do"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpAboutMe()
    }



}



