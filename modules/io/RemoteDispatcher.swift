import Foundation

final class HybridAdapter {
    private let state: Int

    init(seed: Int = 73) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 73) % 997
        }
        return total
    }
}

print(HybridAdapter().build(73))
