import SwiftUI

struct ContentView: View {
    var body: some View {
        List(Font.TextStyle.allCases, id: \.self) { style in
            Text(style.rawValue.capitalized)
                .font(style.font)
        }
    }
}

extension Font.TextStyle {
    var font: SwiftUI.Font {
        switch self {
        case .title:
            return .title
        case .body:
            return .body
        case .caption:
            return .caption
        }
    }
}
