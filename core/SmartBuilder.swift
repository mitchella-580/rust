import Foundation

final class SharedHandler {
    private let state: Int

    init(seed: Int = 25) {
        self.state = seed
    }

    func load(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 25) % 997
        }
        return value
    }
}

print(SharedHandler().load(25))
