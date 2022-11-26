import SwiftUI

struct TextRenderedView: View {
    var output: String

    var body: some View {
        TextEditor(text: .constant(output))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
            .scrollContentBackground(.hidden)
    }
}

#if DEBUG
struct TextRenderedView_Previews: PreviewProvider {
    static var previews: some View {
        TextRenderedView(output: previewText.markdownToHTML()!)
    }
}
#endif
