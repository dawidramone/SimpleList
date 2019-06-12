//
//  ContentView.swift
//  SimpleList
//
//  Created by Dawid Ramone on 12/06/2019.
//  Copyright © 2019 Dawid Ramone. All rights reserved.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
}

struct NameRow: View {
    var person: Person
    var body: some View {
        Text(person.name)
    }
}

struct ContentView : View {
    var body: some View {
        let firstPerson = Person(name: "Dawid")
        let secondPeson = Person(name: "Kamil")
        let thirdPerson = Person(name: "Łukasz")

        let personArray = [firstPerson, secondPeson, thirdPerson]

        return List(personArray) { person in
            NameRow(person: person)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
