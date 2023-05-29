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
    var body: some View {
        Rectangle()
            .frame(width: 350, height: 70)
            .roundedCorner(30, corners: [.bottomLeft, .bottomRight])
            .foregroundColor(.init(red: 0, green: 0, blue: 0, opacity: 0.85))
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Text(Party.sampleParties[0].name)
                            .font(.title2.bold())
                        if Party.sampleParties[1].endDate == nil {
                            Text("\(Party.sampleParties[0].startDate.month!)/\(Party.sampleParties[0].startDate.day!)/" + String(Party.sampleParties[0].startDate.year!))
                                .font(.subheadline)
                        } else {
                            Text("\(Party.sampleParties[0].startDate.month!)/\(Party.sampleParties[0].startDate.day!)/" + String(Party.sampleParties[0].startDate.year!) + " - ")
                                .font(.subheadline)
                        }
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Label(String(format: "%.2f", Party.sampleParties[0].price), systemImage: "dollarsign.circle.fill")
                        Label("\(Party.sampleParties[0].attendance)", systemImage: "person.fill")
                    }
                    .font(.subheadline)
                }.padding()
            ).foregroundColor(.white)
    }
}

struct LowerBannerView_Previews: PreviewProvider {
    static var previews: some View {
        LowerBannerView()
    }
}
