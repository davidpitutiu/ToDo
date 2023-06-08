//
//  AddView.swift
//  ToDo
//
//  Created by Pitutiu David on 01.06.2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            TextField("Type something here....", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(red: 55, green: 55, blue: 55))
                .cornerRadius(10)
            
        } 
        .navigationTitle("Add an Item 🖊️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
