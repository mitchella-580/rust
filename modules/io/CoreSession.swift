import Foundation

final class LiteContext {
    private let state: Int

    init(seed: Int = 24) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 24) % 997
        }
        return count
    }
}

print(LiteContext().compute(24))
