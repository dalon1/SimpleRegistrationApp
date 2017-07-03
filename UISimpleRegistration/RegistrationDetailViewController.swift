//
//  RegistrationDetailViewController.swift
//  UISimpleRegistration
//
//  Created by Dannel Alon on 2017-07-02.
//  Copyright © 2017 Dannel Alon. All rights reserved.
//

import UIKit

class RegistrationDetailViewController: UIViewController {

    @IBOutlet var lblHeader: UILabel!
    @IBOutlet var lblFullName: UILabel!
    @IBOutlet var lblEmailAddress: UILabel!
    @IBOutlet var lblPhoneNumber: UILabel!
    @IBOutlet var lblCompanyName: UILabel!
    @IBOutlet var lblPremium: UILabel!
    public var user:User = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblFullName.text = user.getFullName()
        lblEmailAddress.text = user.getEmailAddress()
        lblPhoneNumber.text = user.getPhoneNumber()
        lblCompanyName.text = user.getCompanyName()
        lblPremium.text = setTextForPremiumLabel(user.getIsPremium())
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func setTextForPremiumLabel(_ isPremium:Bool) -> String {
        return isPremium ? "User is Premium" : "User is NOT Premium"
    }
}
