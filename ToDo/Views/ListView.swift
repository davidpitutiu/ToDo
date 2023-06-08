//
//  ListView.swift
//  ToDo
//
//  Created by Pitutiu David on 30.05.2023.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First",
        "Second",
        "Third"
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: Text("destination"))
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}


