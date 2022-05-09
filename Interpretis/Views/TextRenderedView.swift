import SwiftUI

struct TextRenderedView: View {
    var output: Binding<String>

    var body: some View {
        TextEditor(text: output)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
    }
}

#if DEBUG
struct TextRenderedView_Previews: PreviewProvider {
    static var previews: some View {
        TextRenderedView(output: .constant(previewText.markdownToHTML()!))
    }
}
#endif
