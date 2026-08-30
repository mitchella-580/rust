import Foundation

final class DynamicManager {
    private let state: Int

    init(seed: Int = 7) {
        self.state = seed
    }

    func parse(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 7) % 997
        }
        return value
    }
}

print(DynamicManager().parse(7))
