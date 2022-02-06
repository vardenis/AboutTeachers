//
//  LoginViewController.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var personID: Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.delegate = self
        userNameTF.returnKeyType = .next
        
        passwordTF.delegate = self
        passwordTF.returnKeyType = .done
        
        addTapGestureToHideKeyboard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.personID = personID
    }
    
    @IBAction func accessCheck() {
        let personID = userIDDefinition(
            userName: userNameTF.text,
            password: passwordTF.text)
    
        if personID == nil {
            showAlert(
                title: "Invalid login or password",
                massage: "Enter correct username or password")
        } else {
            self.personID = personID
        }
                
    }
    
    @IBAction func showUserName() {
        showAlert(
            title: "Reminder",
            massage: "Existing usernames: \(existingUserNames())")
    }
    
    @IBAction func showPassword() {
        showAlert(
            title: "Reminder",
            massage: "User passwords: \(userPasswords())")
    }

}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Keyboard Methods
extension LoginViewController {
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else if textField == passwordTF {
            accessCheck()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
    private func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }
}
