//
//  GalleryCardView.swift
//  ArtGallery
//
//  Created by Anna Sumire on 22.12.23.
//

import SwiftUI

struct GalleryCardView: View {
    var item: GalleryItem
    
    var body: some View {
        VStack(alignment: .center) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 140, maxHeight: 170)
                .clipped()
            
            VStack {
                Text(item.name)
                    .font(.headline)
                    .padding(.top, 10)
                    .lineLimit(1)
                
                Text(item.movement.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: 150)
        .padding(EdgeInsets(top: 20, leading: 15, bottom: 15, trailing: 15))
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 6, x: 0, y: 6)
    }
}
