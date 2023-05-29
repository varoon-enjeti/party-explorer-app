//
//  PartyCardView.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import SwiftUI

struct PartyCardView: View {
    let party: Party
    var body: some View {
        Image(Party.sampleParties[0].bannerImage)
            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 200)
            .clipped()
            .cornerRadius(30)
            .overlay(LowerBannerView(), alignment: .bottom)
    }
}

struct PartyCardView_Previews: PreviewProvider {
    static var party = Party.sampleParties[0]
    static var previews: some View {
        PartyCardView(party: Party)
    }
}
