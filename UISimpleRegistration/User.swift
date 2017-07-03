//
//  User.swift
//  UISimpleRegistration
//
//  Created by Dannel Alon on 2017-07-02.
//  Copyright © 2017 Dannel Alon. All rights reserved.
//

import Foundation
import UIKit

public class User {
    // Fields
    private var isRegistered:Bool = false
    private var fName:String?
    private var lName:String?
    private var emailAddress:String?
    private var phoneNumber:String?
    private var companyName:String?
    private var isPremium:Bool = false;
    
    // Properties
    public func getIsRegistered() -> Bool {
        return isRegistered
    }
    
    public func setIsRegistered(_ value:Bool) {
        isRegistered = value
    }
    
    public func getFName() -> String? {
        return fName
    }
    
    public func setFName(_ value:String) {
        fName = value
    }
    
    public func getLName() -> String? {
        return lName
    }
    
    public func getFullName() -> String? {
        return "\(fName!) \(lName!)"
    }
    
    public func setLName(_ value:String) {
        lName = value
    }
    
    public func getEmailAddress() -> String? {
        return emailAddress
    }
    
    public func setEmailAddress(_ value:String) {
        emailAddress = value
    }
    
    public func getPhoneNumber() -> String? {
        return phoneNumber
    }
    
    public func setPhoneNumber(_ value:String) {
        phoneNumber = value
    }
    
    public func getCompanyName() -> String? {
        return companyName
    }
    
    public func setCompanyName(_ value:String) {
        companyName = value
    }
    
    public func getIsPremium() -> Bool {
        return isPremium
    }
    
    public func setIsPremium(_ value:Bool) {
        isPremium = value
    }
    
    // Constructor
    public init() {
        // Default Constructor
    }
    
    public init(_ fName:String, _ lName:String, _ emailAddress:String, _ phoneNumber:String) {
        self.isRegistered = true
        self.fName = fName
        self.lName = lName
        self.emailAddress = emailAddress
        self.phoneNumber = phoneNumber
    }
    
}
