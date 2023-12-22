//
//  GalleryModel.swift
//  ArtGallery
//
//  Created by Anna Sumire on 22.12.23.
//

import Foundation

enum Movement {
    case baroque
    case modernism
    case renaissance
    case postimpressionism
    
    var description: String {
         switch self {
         case .baroque:
             return "Baroque"
         case .modernism:
             return "Modernism"
         case .renaissance:
             return "Renaissance"
         case .postimpressionism:
             return "Post-Impressionism"
         }
     }
}

struct GalleryItem: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let movement: Movement
    let painter: String
    let info: String
}

struct GalleryList {
    static let galleryList = [
        GalleryItem(name: "The Entombment of Christ", image: "image1", movement: .baroque, painter: "Caravaggio", info: "The Entombment of Christ is a masterpiece by the Baroque artist Caravaggio, painted around 1602-1603. It depicts the poignant moment after Christ's crucifixion as his lifeless body is being prepared for burial, showcasing Caravaggio's signature use of chiaroscuro to create dramatic lighting and intense realism. The painting is known for its emotional depth and remains housed in the Vatican Museums."),
        GalleryItem(name: "Sistine Madonna", image: "image2", movement: .renaissance, painter: "Raphael", info: "The Sistine Madonna is a renowned painting by the Italian Renaissance artist Raphael, created between 1512 and 1513. It features the Virgin Mary holding the Christ Child, surrounded by distinctive angelic figures at the bottom. The painting is celebrated for its composition, emotional depth, and the iconic inclusion of the two cherubs at the lower part of the artwork."),
        GalleryItem(name: "La Toilette", image: "image3", movement: .postimpressionism, painter: " Henri de Toulouse-Lautrec", info: "La Toilette is a work by the French Post-Impressionist artist Henri de Toulouse-Lautrec, painted in the late 19th century. The painting depicts a woman in the act of dressing or undressing, showcasing Lautrec's distinctive style and fascination with the intimate aspects of modern life in Paris. Lautrec was known for his portrayals of the nightlife and social scenes of the time."),
        GalleryItem(name: "Sunflowers", image: "image4", movement: .postimpressionism, painter: "Vincent van Gogh", info: "Sunflowers is a series of still-life paintings by the Dutch artist Vincent van Gogh, created in the late 1880s. One of the most famous versions is housed in the National Gallery in London. Van Gogh's Sunflowers are characterized by vibrant colors and bold brushstrokes, and they are considered iconic representations of the artist's unique style."),
        GalleryItem(name: "Lady with an Ermine", image: "image6", movement: .modernism, painter: "Leonardo da Vinci", info: "Lady with an Ermine is a portrait painted by Leonardo da Vinci around 1489-1490. The artwork features Cecilia Gallerani, a young woman in a striking pose, holding an ermine. Leonardo's meticulous attention to detail and his skill in capturing the sitter's expression contribute to the enduring allure of this portrait."),
        GalleryItem(name: "Music, Pink and Blue No. 2", image: "image5", movement: .renaissance, painter: "Georgia O'Keeffe", info: "Music, Pink and Blue No. 2 is a painting by the American modernist artist Georgia O'Keeffe, created in 1918. Known for her enlarged and abstracted depictions of flowers, Music, Pink and Blue No. 2 features O'Keeffe's characteristic use of vibrant colors and dynamic forms. The painting reflects O'Keeffe's innovative approach to depicting the beauty of the natural world.")
    ]
}
