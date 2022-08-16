//
//  ProfileViewController.swift
//  connectGEN
//
//  Created by Scholar on 8/16/22.
//


import UIKit

class ChecklistItem {
    let title: String
    var isChecked: Bool = false
    
    init(title: String){
        self.title = title
    }
}

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
  var imagePicker = UIImagePickerController()

    let items: [ChecklistItem] = [
    "Movies",
    "Reading",
    "Sports",
    "Gardening",
    "Technology",
    "Fashion"
    ].compactMap({
        ChecklistItem(title: $0)
    })
    
    private let tableView: UITableView = {
        let table = UITableView()
        
        return table
    }()
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
  override func viewDidLoad() {
    super.viewDidLoad()
    imagePicker.delegate = self
  }
    
    
    @IBAction func choosePhotoTapped(_ sender: Any) {
    
    imagePicker.sourceType = .photoLibrary
    present(imagePicker, animated: true, completion: nil)
        
  }
    



  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
   
    if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      imageDisplay.image = selectedImage
    }
      
    imagePicker.dismiss(animated: true, completion: nil)
  }
}
