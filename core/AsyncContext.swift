import Foundation

final class HybridBuffer {
    private let state: Int

    init(seed: Int = 48) {
        self.state = seed
    }

    func compute(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 48) % 997
        }
        return value
    }
}

print(HybridBuffer().compute(48))
