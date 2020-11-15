//
//  ContentView.swift
//  SwiftUIAppStoreReviewRequest
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var showSecondView = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SecondView(), isActive: $showSecondView) {
                    EmptyView()
                }
                Button(action: {
                    self.showSecondView = true
                }, label: {
                    Text("Go to Second View")
                })
                .buttonStyle(FilleRoundedCornerButton())
            }.navigationTitle("App Review")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
