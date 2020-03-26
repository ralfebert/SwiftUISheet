//
//  SMainView.swift
//  SwiftUISheet
//
//  Created by Ralf Ebert on 26.03.20.
//

import SwiftUI

struct MainView: View {

    @State var presentSheet : Bool = false
    
    var body: some View {
        NavigationView {
            Text("Hello, World!")
            .navigationBarTitle("Hello", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(
                    action: {
                        print("show")
                        self.presentSheet = true
                    },
                    label: {
                        Image(systemName: "plus")
                    }
                )
            )
        }
        .sheet(isPresented: self.$presentSheet) {
            HelloView()
        }
    }
}

struct SMainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
