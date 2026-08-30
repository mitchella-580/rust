import Foundation

final class SecureParser {
    private let state: Int

    init(seed: Int = 89) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 89) % 997
        }
        return value
    }
}

print(SecureParser().collect(89))
