//
//  CreditCardView.swift
//  Components
//
//  Created by Christian Ampe on 9/22/19.
//

import SwiftUI

struct CreditCardView {
    @State var number = "•••• •••• •••• ••••"
    @State var cvv = "•••"
    @State var date = "09/21"
    @State var name = "John Smith"
}

extension CreditCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Image("mastercard")
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading) {
                Text(number)
                    .font(.title)
                Text(cvv)
                    .font(.caption)
            }
            VStack(alignment: .leading) {
                Text(date)
                    .font(.footnote)
                Text(name)
                    .font(.headline)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.black,
                        lineWidth: 4)
        )
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}
