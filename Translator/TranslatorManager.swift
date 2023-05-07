import Foundation
import SwiftUI
import OKCommonMark

class TranslatorManager: ObservableObject {
    init(text: String = "") {
        input = text
        output = render(text)
    }

    @Published var input: String {
        didSet {
            output = render(input)
        }
    }

    var output: String = ""

    func render(_ string: String) -> String {
        return string.markdownToHTML([ .noBreaks, .unsafe, .validateUTF8]) ?? "CommonMark parsing error."
    }
}
