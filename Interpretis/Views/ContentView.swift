import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @StateObject var manager = InterpretisManager()

    var body: some View {
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            vertical
        } else {
            horizontal
        }
    }

    var horizontal: some View {
        HStack {
            TextInputView(input: $manager.input)
            Divider()
            TextRenderedView(output: $manager.output)
        }
    }

    var vertical: some View {
        VStack {
            TextInputView(input: $manager.input)
            Divider()
            TextRenderedView(output: $manager.output)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(manager: InterpretisManager(text: previewText))
            ContentView(manager: InterpretisManager(text: previewText))
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
