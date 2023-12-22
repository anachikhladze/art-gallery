//
//  ArtGalleryView.swift
//  ArtGallery
//
//  Created by Anna Sumire on 22.12.23.
//

import SwiftUI

struct ArtGalleryView: View {
    @State private var isActive = false
    @State private var selectedItem: GalleryItem?
    @State private var instructionsAlertShowing = false
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    galleryGrid
                }
                .padding(.horizontal, 10)
            }
            .navigationTitle("Art Gallery")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(isPresented: $isActive) {
                if let item = selectedItem {
                    ArtworkDetailsView(item: item)
                }
            }
        }
        .alert("Instructions", isPresented: $instructionsAlertShowing) {
            // "ok" button
        } message: {
            Text("Please use double-tap or long-press gestures to open painting details. 🎨")
        }
        .onAppear() {
            instructionsAlertShowing = true
        }

    }
    
    private var galleryGrid: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(GalleryList.galleryList) { item in
                GalleryCardView(item: item)
                    .padding(.bottom, 10)
                    .gesture(
                        doubleTap.onEnded { _ in
                            selectedItem = item
                            isActive = true
                        }
                    )
                    .gesture(longPress.onEnded { _ in
                        selectedItem = item
                        isActive = true
                    })
            }
        }
    }
    
    private var doubleTap: some Gesture {
        TapGesture(count: 2)
            .onEnded { _ in
                isActive = true
            }
    }
    
    private var longPress: some Gesture {
        LongPressGesture()
            .onEnded { _ in
                isActive = true
            }
    }
}

#Preview {
    ArtGalleryView()
}
