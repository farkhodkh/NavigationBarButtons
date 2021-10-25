//
//  ContentView.swift
//  NavigationBarButtons
//
//  Created by Farkhod on 25.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var companyName: String = ""
    var body: some View {
        NavigationView {
            VStack {
                ProfileImages(imageName: "foto")
                
                Form{
                    Section(header: Text("Personal Info")) {
                        TextField("First name", text: $firstName)
                        TextField("Last name", text: $lastName)
                        TextField("Company name", text: $companyName)
                    }
                }
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button("Save") {
                        print("Saved")
                    }
                    
                    Button {
                        print("Saved")
                    } label: {
                        Label("Save", systemImage: "square.and.arrow.down")
                    }
                }
            }
        }
        .accentColor(.green)
    }
}

struct ProfileImages: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
