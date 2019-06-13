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
    let gender: String
}

struct Persons {
    let firstPerson = Person(name: "Dawid", gender: "male")
    let secondPeson = Person(name: "Kamil", gender: "male")
    let thirdPerson = Person(name: "Łukasz", gender: "male")
    var persons: [Person] = []

    init() {
        self.persons = [firstPerson, secondPeson, thirdPerson]
    }
}

struct NameRow: View {
    var person: Person
    var body: some View {
        Text(person.name + " is a " + person.gender)
    }
}

struct ContentView : View {
    var persons = Persons()

    var body: some View {
        NavigationView {
            List {

                Section(header: Text("Section 1"), content: {
                    ForEach(persons.persons.identified(by: \.id)) { person in
                        NameRow(person: person)
                    }
                })
            }.listStyle(.grouped).navigationBarTitle(Text("Simple TableView"))
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
