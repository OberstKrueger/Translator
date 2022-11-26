import SwiftUI

struct TextInputView: View {
    var input: Binding<String>

    var body: some View {
        TextEditor(text: input)
            .background()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            .padding() 
    }
}

#if DEBUG
struct TextInputView_Previews: PreviewProvider {
    static var previews: some View {
        TextInputView(input: .constant(previewText))
    }
}
#endif
