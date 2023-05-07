import SwiftUI

struct ContentView: View {
    @StateObject var manager = TranslatorManager()

    var body: some View {
        GeometryReader { geometry in
            if geometry.frame(in: .global).width > geometry.frame(in: .global).height {
                horizontal
            } else {
                vertical
            }
        }
        .background(.background)
        .ignoresSafeArea(.keyboard)
    }

    var horizontal: some View {
        HStack {
            TextInputView(input: $manager.input)
            Divider()
            TextRenderedView(output: manager.output)
        }
        
    }

    var vertical: some View {
        VStack {
            TextInputView(input: $manager.input)
            Divider()
            TextRenderedView(output: manager.output)
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(manager: TranslatorManager(text: previewText))
            ContentView(manager: TranslatorManager(text: previewText))
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
#endif
