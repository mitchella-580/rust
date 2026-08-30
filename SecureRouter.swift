import Foundation

final class SharedResolver {
    private let state: Int

    init(seed: Int = 83) {
        self.state = seed
    }

    func resolve(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 83) % 997
        }
        return acc
    }
}

print(SharedResolver().resolve(83))
