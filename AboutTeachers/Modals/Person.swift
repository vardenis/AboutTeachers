//
//  Person.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

struct Person {
    let personID: Int
    let user: User
    let name: String
    
    static func informationAboutPerson() -> [Person] {
        [
            Person(
                personID: 123,
                user: User(userName: "Denis", password: "Denis"),
                name: "Denis"),
            Person(
                personID: 777,
                user: User(userName: "Alexey", password: "Efimov"),
                name: "Алексей"),
            Person(
                personID: 333,
                user: User(userName: "Eugenya", password: "Bruyko"),
                name: "Евгения")
        ]
    }
}

func informationOnPerson(personID: Int) -> Person?{
    let personsBD = Person.informationAboutPerson()
    var personInformation: Person?
    
    for person in personsBD {
        if person.personID == personID {
            personInformation = person
            break
        }
    }
    
    return personInformation
}

