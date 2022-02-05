//
//  Person.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

struct Person {
    let userID: Int
    let userName: String
    let password: String
    let name: String
    
    static func informationAboutPerson() -> [Person] {
        [
            Person(
                userID: 123,
                userName: "Denis",
                password: "Denis",
                name: "Денис"),
            Person(
                userID: 777,
                userName: "Alexey",
                password: "Efimov",
                name: "Алексей"),
            Person(
                userID: 333,
                userName: "Eugenya",
                password: "Bruyko",
                name: "Евгения")
        ]
    }
}

func userIDDefinition(userName: String?, password: String?) -> Int?{
    let personsBD = Person.informationAboutPerson()
    var userID: Int?
    
    for person in personsBD {
        if person.userName == userName && person.password == password {
            userID = person.userID
            break
        }
    }
    return userID
}

func informationOnPerson(userID: Int) -> Person?{
    let personsBD = Person.informationAboutPerson()
    var personInformation: Person?
    
    for person in personsBD {
        if person.userID == userID {
            personInformation = person
            break
        }
    }
    
    return personInformation
}

func existingUserNames() -> String {
    let personInfo = Person.informationAboutPerson()
    var usersName = ""
    var cycleStart = true
    
    for person in personInfo {
        if cycleStart {
            usersName = "\(person.userName)"
            cycleStart = false
        }else {
            usersName = "\(usersName), \(person.userName)"
        }
    }
    
    return usersName
}


func personPasswords() -> String{
    let personInfo = Person.informationAboutPerson()
    var personPasswords = ""
    var cycleStart = true

    for person in personInfo {
        if cycleStart {
            personPasswords = "User Name: \(person.userName) - Password: \(person.password)"
            cycleStart = false
        }else {
            personPasswords = "\(personPasswords); User Name: \(person.userName) - Password: \(person.password)"
        }
    }
    
    return personPasswords
}
