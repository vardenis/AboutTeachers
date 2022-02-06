//
//  PersonImageViewController.swift
//  AboutTeachers
//
//  Created by Денис on 06.02.2022.
//

import UIKit

class PersonImageViewController: UIViewController {
    
    @IBOutlet var personIMG: UILabel!
    
    var personID: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        if personID == nil {
            personIMG.text = ""
        }else {
            let person = informationOnPerson(personID: personID)
            personIMG.text = person?.image
        }
    }
    

}
