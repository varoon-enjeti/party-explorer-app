//
//  LowerBannerView.swift
//  Party Explorer App
//
//  Created by Varoon Enjeti on 5/28/23.
//

import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func roundedCorner(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

struct LowerBannerView: View {
    let party: Party
    
    var body: some View {
        let nill: Bool = party.endDate == nil
        Rectangle()
            .frame(width: 350, height: 70)
            .roundedCorner(30, corners: [.bottomLeft, .bottomRight])
            .foregroundColor(.init(red: 0, green: 0, blue: 0, opacity: 0.85))
            .overlay(
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(party.name)
                            .font(.title2.bold())
                        if nill {
                            Text("\(party.startDate.month!)/\(party.startDate.day!)/" + String(party.startDate.year!))
                        } else {
                            Text("\(party.startDate.month!)/\(party.startDate.day!)/" + String(party.startDate.year!) + " - \(party.endDate?.month! ?? 0)/\(party.endDate?.day! ?? 0)/" + String(party.endDate?.year! ?? 0))
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Label(String(format: "%.2f", party.price), systemImage: "dollarsign.circle.fill")
                        Label("\(party.attendance)", systemImage: "person.fill")
                    }
                    .font(.subheadline)
                }.padding()
            ).foregroundColor(.white)
    }
}

struct LowerBannerView_Previews: PreviewProvider {
    static var party = Party.sampleParties[0]
    static var previews: some View {
        LowerBannerView(party: party)
    }
}
