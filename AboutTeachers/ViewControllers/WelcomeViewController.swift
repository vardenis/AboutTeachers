//
//  WelcomeViewController.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var personName: UILabel!
    
    var personID: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if personID == nil {
            personName.text = ""
        }else {
            let person = informationOnPerson(personID: personID)
            personName.text = "Добро пожаловать, \(person?.name ?? "")"
        }
    }

}
