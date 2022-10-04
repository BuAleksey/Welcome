//
//  User.swift
//  Welcome
//
//  Created by Buba on 04.10.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                name: "Алексей",
                plaseOfWork: "Акционерный банк РОССИЯ",
                profession: "Юрист",
                yars: 33,
                definition: "Более 15 лет работаю юристом, с декабря 2021 года взялся за обучение мобильной разработкой, спустя пол года оказался у вас, надеюсь к концу года я буду активно искать работу по новой профессии, ой как этого не хватает в текущей ситуации...")
        )
    }
}

struct Person {
    let name: String
    let plaseOfWork: String
    let profession: String
    let yars: Int
    let definition: String
}
