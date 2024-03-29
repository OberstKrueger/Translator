import SwiftUI

struct TextInputView: View {
    var input: Binding<String>

    var body: some View {
        TextEditor(text: input)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding()
            .scrollContentBackground(.hidden)
    }
}

#if DEBUG
struct TextInputView_Previews: PreviewProvider {
    static var previews: some View {
        TextInputView(input: .constant(previewText))
    }
}
#endif
