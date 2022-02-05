//
//  WelcomeViewController.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var personName: UILabel!
    
    var userID: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if userID == nil {
            userID = 0
        }else {
            let person = informationOnPerson(userID: userID)
            personName.text = person?.name
        }
  
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
