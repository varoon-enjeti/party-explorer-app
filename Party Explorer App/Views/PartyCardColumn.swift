//
//  PartyCardColumn.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import SwiftUI

struct PartyCardColumn: View {
    let parties: [Party]
    
    var body: some View {
        List(parties) {party in
            PartyCardView(party: party)
        }
    }
}

struct PartyCardColumn_Previews: PreviewProvider {
    static var previews: some View {
        PartyCardColumn(parties: Party.sampleParties)
    }
}
