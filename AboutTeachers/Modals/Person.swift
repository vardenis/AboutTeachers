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
    let information: String
    let image: String
    
    static func informationAboutPerson() -> [Person] {
        [
            Person(
                personID: 777,
                user: User(userName: "Alexey", password: "Efimov"),
                name: "Алексей",
                information: """
Выдержки Алексея можно только позавидовать. Получать столько глупых вопросов на курсе и проверять ежедневно множество бредового кода, может только истинный преподаватель. Алексей как творец, из нас (сырого материала) он методично создает тех, кого не стыдно будет показать Миру.
""",
                image: "👨🏼‍💻"
            ),
            Person(
                personID: 333,
                user: User(userName: "Eugenya", password: "Bruyko"),
                name: "Евгения",
                information: """
Это не женщина — это мечта. Только так можно охарактеризовать Евгению. Евгения - iOS-разработчик. Ведущий вебинаров и автор курсов и копошилок.
""",
                image: "😍"
            )
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

