//
//  PersonInformationViewController.swift
//  AboutTeachers
//
//  Created by Денис on 06.02.2022.
//

import UIKit

class PersonInformationViewController: UIViewController {

    @IBOutlet var InformationTV: UITextView!
    
    var personID: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if personID == nil {
            title = ""
        }else {
            let person = informationOnPerson(personID: personID)
            title = person?.name
            InformationTV.text = person?.information
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personImageVC = segue.destination as? PersonImageViewController else { return }
        
        personImageVC.personID = personID
    }
    

}
