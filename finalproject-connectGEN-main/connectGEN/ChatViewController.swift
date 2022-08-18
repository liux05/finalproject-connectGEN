//
//  ChatViewController.swift
//  connectGEN
//
//  Created by scholar on 8/18/22.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var fakeChat: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        fakeChat.isHidden = true
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
    
    @IBAction func sendTapped(_ sender: Any) {
        fakeChat.isHidden = false
    }
    
}
