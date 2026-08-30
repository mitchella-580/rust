import Foundation

final class FastLoader {
    private let state: Int

    init(seed: Int = 36) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 36) % 997
        }
        return acc
    }
}

print(FastLoader().decode(36))
