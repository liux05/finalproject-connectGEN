//
//  FeedbackViewController.swift
//  connectGEN
//
//  Created by scholar on 8/16/22.
//

import UIKit

class FeedbackViewController: UIViewController {

    
    @IBOutlet weak var darkest: UIImageView!
    
    @IBOutlet weak var secondDark: UIImageView!
    
    @IBOutlet weak var middle: UIImageView!
    
    @IBOutlet weak var secondLight: UIImageView!
    
    @IBOutlet weak var lightest: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        darkest.isHidden = true
        secondDark.isHidden = true
        middle.isHidden = true
        secondLight.isHidden = true
        lightest.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func oneStar(_ sender: UIButton) {
        darkest.isHidden = false
        secondDark.isHidden = true
        middle.isHidden = true
        secondLight.isHidden = true
        lightest.isHidden = true
    }
    
    @IBAction func twoStar(_ sender: UIButton) {
        darkest.isHidden = false
        secondDark.isHidden = false
        middle.isHidden = true
        secondLight.isHidden = true
        lightest.isHidden = true

    }
    
    @IBAction func threeStar(_ sender: UIButton) {
        darkest.isHidden = false
        secondDark.isHidden = false
        middle.isHidden = false
        secondLight.isHidden = true
        lightest.isHidden = true

    }
    
    @IBAction func fourStar(_ sender: UIButton) {
        darkest.isHidden = false
        secondDark.isHidden = false
        middle.isHidden = false
        secondLight.isHidden = false
        lightest.isHidden = true

    }
    
    @IBAction func fiveStar(_ sender: UIButton) {
        darkest.isHidden = false
        secondDark.isHidden = false
        middle.isHidden = false
        secondLight.isHidden = false
        lightest.isHidden = false

    }
    
}
    

