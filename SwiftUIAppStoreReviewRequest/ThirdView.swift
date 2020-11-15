//
//  ThirdView.swift
//  SwiftUIAppStoreReviewRequest
//
//  Created by Ramill Ibragimov on 15.11.2020.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        Text("""
            We are here.
            Show App Review.
            """)
            .onAppear() {
                AppReviewRequest.requestReviewIfNeeded()
            }
            .navigationTitle("Third View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
