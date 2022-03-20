import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @StateObject var manager = InterpretisManager()

    var body: some View {
        if horizontalSizeClass == .regular {
            HStack {
                TextInputView()
                Divider()
                TextRenderedView()
            }
        } else {
            VStack {
                TextInputView()
                Divider()
                TextRenderedView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 Mini")
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
                .previewDevice("iPhone 13 Pro Max")
        }
    }
}
