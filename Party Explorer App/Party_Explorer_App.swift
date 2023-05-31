//
//  Party_Explorer_AppApp.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import SwiftUI

@main
struct Party_Explorer_AppApp: App {
    let myID: String = "test"
    var body: some Scene {
        WindowGroup {
            PartyCardColumn(parties: Party.sampleParties)
        }
    }
}
