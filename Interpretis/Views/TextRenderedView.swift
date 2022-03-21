import SwiftUI

struct TextRenderedView: View {
    var output: String

    var body: some View {
        ScrollView {
            Text(output)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .textSelection(.enabled)
        }
        .padding()
    }
}

struct TextRenderedView_Previews: PreviewProvider {
    static var previews: some View {
        TextRenderedView(output: previewText)
    }
}
