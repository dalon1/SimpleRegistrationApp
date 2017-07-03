//
//  ViewController.swift
//  UISimpleRegistration
//
//  Created by Dannel Alon on 2017-07-02.
//  Copyright © 2017 Dannel Alon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var lblCompanyName: UILabel!
    let companyName:String = "DANNEL VISION"
    
    @IBOutlet var txtFName: UITextField!
    @IBOutlet var txtLName: UITextField!
    @IBOutlet var txtEmailAddress: UITextField!
    @IBOutlet var txtPhoneNumber: UITextField!
    @IBOutlet var txtCompanyName: UITextField!
    @IBOutlet var swPremium: UISwitch!
    var fields:Array<UITextField> = Array<UITextField>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblCompanyName.text = companyName
        fields.append(txtFName)
        fields.append(txtLName)
        fields.append(txtEmailAddress)
        fields.append(txtPhoneNumber)
        fields.append(txtCompanyName)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Passing information from one view controller to another view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let registrationDetailController = segue.destination as! RegistrationDetailViewController
        registrationDetailController.user = setUpUserRegistration()
        
        // Check later why the hell this is not working
        //registrationDetailController.lblHeader!.text = myPhrase
    }
    
    private func setUpUserRegistration() -> User {
        let user:User = User()
        user.setFName(txtFName.text!)
        user.setLName(txtLName.text!)
        user.setEmailAddress(txtEmailAddress.text!)
        user.setPhoneNumber(txtPhoneNumber.text!)
        user.setCompanyName(txtCompanyName.text!)
        user.setIsPremium(swPremium.isOn)
        return user
    }
    
    /*
     Try to use this method later...
     */
    private func setUpTextBoxOrder(_ textFields:Array<UITextField>) {
        var counter:Int = 0
        for textField in textFields {
            textField.delegate = self
            textField.tag = counter
            textField.returnKeyType = UIReturnKeyType.next
            counter += 1
        }
    }
    
    // Using the UITextFieldDelegate 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else  {
            textField.resignFirstResponder()
        }
        return false
    }
}

