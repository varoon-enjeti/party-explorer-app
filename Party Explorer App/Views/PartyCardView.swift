//
//  PartyCardView.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import SwiftUI

struct PartyCardView: View {
    var party: Party
    let myID: String
    var body: some View {
        ZStack {
            Image(party.bannerImage)
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 350, height: 200)
                .clipped()
                .cornerRadius(30)
                .overlay(LowerBannerView(party: party), alignment: .bottom)
                .shadow(radius: 7)
            Button(action: {party.attend(userID: myID)}, label: {Text("Attend")})
                .frame(width: 100, height: 50)
                .background()
        }
    }
}

struct PartyCardView_Previews: PreviewProvider {
    static var party = Party.sampleParties[0]
    var userID: String
    static var previews: some View {
        PartyCardView(party: party, myID: String)
    }
}
