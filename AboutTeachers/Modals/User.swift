//
//  User.swift
//  AboutTeachers
//
//  Created by Денис on 06.02.2022.
//

struct User {
    let userName: String
    let password: String
}

func userIDDefinition(userName: String?, password: String?) -> Int?{
    let personsBD = Person.informationAboutPerson()
    var personID: Int?
    
    for person in personsBD {
        if person.user.userName == userName && person.user.password == password {
            personID = person.personID
            break
        }
    }
    return personID
}

func existingUserNames() -> String {
    let personInfo = Person.informationAboutPerson()
    var usersName = ""
    var cycleStart = true
    
    for person in personInfo {
        if cycleStart {
            usersName = "\(person.user.userName)"
            cycleStart = false
        }else {
            usersName = "\(usersName), \(person.user.userName)"
        }
    }
    
    return usersName
}

func userPasswords() -> String{
    let personInfo = Person.informationAboutPerson()
    var userPasswords = ""
    var cycleStart = true

    for person in personInfo {
        if cycleStart {
            userPasswords = "User Name: \(person.user.userName) - Password: \(person.user.password)"
            cycleStart = false
        }else {
            userPasswords = "\(userPasswords); User Name: \(person.user.userName) - Password: \(person.user.password)"
        }
    }
    
    return userPasswords
}
