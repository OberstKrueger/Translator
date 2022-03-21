import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @StateObject var manager = InterpretisManager()

    var body: some View {
        if horizontalSizeClass == .regular {
            HStack {
                TextInputView(input: $manager.input)
                Divider()
                TextRenderedView(output: manager.output)
            }

        } else {
            VStack {
                TextInputView(input: $manager.input)
                Divider()
                TextRenderedView(output: manager.output)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(manager: InterpretisManager(text: previewText))
            ContentView(manager: InterpretisManager(text: previewText))
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
