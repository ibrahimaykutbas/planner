import SwiftUI

struct ColorOptions: Codable {
    static var all: [Color] = [
        .primary,
        .gray,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .cyan,
        .indigo,
        .purple,
    ]
    
    static var `default`: Color = .primary
    
    static func randomColor() -> Color {
        if let element = self.all.randomElement() {
            return element
        } else {
            return .primary
        }
    }
}

struct RGBAColor: Codable, Hashable {
    var r: CGFloat
    var g: CGFloat
    var b: CGFloat
    var a: CGFloat
}
