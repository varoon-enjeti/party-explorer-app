//
//  Party.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import Foundation

struct Party: Identifiable {
    let id: UUID
    var name: String
    var bannerImage: String
    var price: Double
    var attendance: Int
    var startDate: DateComponents
    var endDate: DateComponents?
    
    init(id: UUID = UUID(), name: String, bannerImage: String, price: Double, attendance: Int, startDate: DateComponents, endDate: DateComponents? = nil) {
        self.id = id
        self.name = name
        self.bannerImage = bannerImage
        self.price = price
        self.attendance = attendance
        self.startDate = startDate
        self.endDate = endDate
    }
}

extension Party {
    static let sampleParties: [Party] =
    [
        Party(name: "Lollapalooza",
              bannerImage: "lollapalooza",
              price: 130,
              attendance: 782,
              startDate: DateComponents(year: 2023, month: 8, day: 3),
              endDate: DateComponents(year: 2023, month: 8, day: 6)
             ),
        Party(name: "Burning Man",
              bannerImage: "burning-man",
              price: 575,
              attendance: 1598,
              startDate: DateComponents(year: 2023, month: 8, day: 27),
              endDate: DateComponents(year: 2023, month: 9, day: 4)
             ),
        Party(name: "House Party",
              bannerImage: "house-party",
              price: 5.50,
              attendance: 34,
              startDate: DateComponents(year: 2023, month: 6, day: 10)
             ),
        Party(name: "Varoon's Rager",
              bannerImage: "varoons-rager",
              price: 3,
              attendance: 0,
              startDate: DateComponents(year: 2023, month: 5, day: 31))
    ]
}

