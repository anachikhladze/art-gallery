//
//  ArtworkDetailsView.swift
//  ArtGallery
//
//  Created by Anna Sumire on 23.12.23.
//

import SwiftUI

struct ArtworkDetailsView: View {
    
    // MARK: - Properties
    @State private var angle = Angle(degrees: 0.0)
    @GestureState private var magnifyBy = 1.0
    
    var item: GalleryItem
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 300, maxHeight: 350)
                .scaleEffect(magnifyBy)
                .rotationEffect(angle)
                .gesture(magnification.simultaneously(with: rotation))
                .clipped()
            
            VStack {
                Text(item.name)
                    .font(.title)
    
                Text(item.painter)
                    .font(.headline)
                
                Text(item.info)
                    .font(.system(size: 14))
                    .padding()
                
                Text("Tip: You can use magnification and rotation gestures to take a closer look at paintings.")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
    
    // MARK: - Gestures
    var rotation: some Gesture {
        RotateGesture()
            .onChanged { value in
                angle = value.rotation
            }
            .onEnded { _ in
                angle = Angle(degrees: 0.0)
            }
    }
    
    var magnification: some Gesture {
        MagnifyGesture()
            .updating($magnifyBy) { value, gestureState, transaction in
                gestureState = value.magnification
            }
    }
}
