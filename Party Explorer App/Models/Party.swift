//
//  Party.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import Foundation

struct Party: Identifiable {
    let id: UUID        // for identifying in list
    var name: String
    var bannerImage: String     // used String because I was having issues converting from URL to Image
    var price: Double
    var attendance: Int
    var startDate: DateComponents
    var endDate: DateComponents?    // optional
    var userIDs: [String]
    
    init(id: UUID = UUID(), name: String, bannerImage: String, price: Double, attendance: Int, startDate: DateComponents, endDate: DateComponents? = nil) {
        self.id = id
        self.name = name
        self.bannerImage = bannerImage
        self.price = price
        self.attendance = attendance
        self.startDate = startDate
        self.endDate = endDate
        self.userIDs = []
    }
    
    func dateString() -> String {
        if endDate == nil {
            return "\(startDate.month!)/\(startDate.day!)/" + String(startDate.year!)
        } else {
            return "\(startDate.month!)/\(startDate.day!)/" + String(startDate.year!) + " - \(endDate?.month! ?? 0)/\(endDate?.day! ?? 0)/" + String(endDate?.year! ?? 0)
        }
    }
    
    mutating func attend(userID: String) -> Void {
        userIDs.append(userID)
    }
}

extension Party {
    static let sampleParties: [Party] =
    [
        Party(name: "Varoon's Rager",
              bannerImage: "varoons-rager",
              price: 3,
              attendance: 0,
              startDate: DateComponents(year: 2023, month: 5, day: 31)
             ),
        Party(name: "House Party",
              bannerImage: "house-party",
              price: 5.50,
              attendance: 34,
              startDate: DateComponents(year: 2023, month: 6, day: 10)
             ),
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
             )
    ]
}

