import SwiftUI

class InterpretisManager: ObservableObject {
    @Published var input: String = ""

    var output: String { return input }
}
