//
//  SecondView.swift
//  SwiftUIAppStoreReviewRequest
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import SwiftUI

struct SecondView: View {
    @State private var showThirdView = false
    
    var body: some View {
        VStack {
            NavigationLink(destination: ThirdView(), isActive: $showThirdView) {
                EmptyView()
            }
            Button(action: {
                self.showThirdView = true
            }, label: {
                Text("Go to Third View")
            })
            .buttonStyle(FilleRoundedCornerButton(bgColor: .red))
        }
        .navigationTitle("Second View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
