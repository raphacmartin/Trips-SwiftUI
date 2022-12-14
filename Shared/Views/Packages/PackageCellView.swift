//
//  PackageCellView.swift
//  SwiftUI Study
//
//  Created by Rapha on 9/19/22.
//

import SwiftUI

struct PackageCellView: ResponsiveView {
    var resources: ResponsiveResources {
        ResponsiveResources(sizeClass: horizontalSizeClass)
    }
    
    let tripPackage: TripPackage
    
    @Environment(\.horizontalSizeClass)
    var horizontalSizeClass
    
    var body: some View {
        VStack {
            Image(tripPackage.images[0])
                .resizable()
                .frame(width: 180, height: 135)
                .aspectRatio(contentMode: .fill)
                .clipped()
            
            VStack(spacing: 0) {
                Text(tripPackage.title)
                    .font(resources.cellTitleFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text(tripPackage.description)
                    .font(resources.labelSmallFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text(tripPackage.date)
                    .font(resources.labelSmallFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text("À partir de")
                    .font(resources.labelExtraSmallFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                Text("R$ \(tripPackage.value)")
                    .font(resources.highlightFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.orange)
                
                Text("em até 12x")
                    .font(resources.labelExtraSmallFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                Text("cancelamento grátis")
                    .font(resources.highlightExtraSmallFont)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.green)
                
            }.padding(.horizontal, 5)
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)
        .border(Color(red: 0.9, green: 0.9, blue: 0.9))
    }
}

struct PacoteViagemCell_Previews: PreviewProvider {
    static var previews: some View {
        PackageCellView(tripPackage: tripPackages[0])
            .previewLayout(.fixed(width: 190, height: 260))
    }
}
