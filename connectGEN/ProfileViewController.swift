//
//  ProfileViewController.swift
//  connectGEN
//
//  Created by Scholar on 8/16/22.
//

import UIKit
class ProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
  var imagePicker = UIImagePickerController()
    
    
    
    
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
