import SwiftUI

class InterpretisManager: ObservableObject {
    init(text: String = "") {
        input = text
    }

    @Published var input: String

    var output: String { return input }
}
