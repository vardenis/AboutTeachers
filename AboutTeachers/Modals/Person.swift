//
//  Person.swift
//  AboutTeachers
//
//  Created by Денис on 05.02.2022.
//

struct Person {
    let identifier: Int
    let userName: String
    let password: String
    let name: String
    
    static func informationAboutPerson() -> [Person] {
        [
            Person(
                identifier: 123,
                userName: "Denis",
                password: "Denis",
                name: "Денис"),
            Person(
                identifier: 777,
                userName: "Alexey",
                password: "Efimov",
                name: "Алексей"),
            Person(
                identifier: 333,
                userName: "Eugenya",
                password: "Bruyko",
                name: "Евгения")
        ]
    }
}
