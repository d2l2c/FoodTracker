//
//  ViewController.swift
//  FoodTracker
//
//  Created by Dayan Lazare on 6/23/16.
//  Copyright © 2016 Dayan Lazare. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!;
    @IBOutlet weak var mealNameLabel: UILabel!;
    @IBOutlet weak var photoImageView: UIImageView!;

    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Handle the text field’s user input through delegate callbacks.
        self.nameTextField.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.nameTextField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        self.mealNameLabel.text = textField.text;
    }

    // MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        
    }
    
    @IBAction func setDefaultLabelText(sender: UIButton) {
        self.mealNameLabel.text = "Default Text";
    }
}

