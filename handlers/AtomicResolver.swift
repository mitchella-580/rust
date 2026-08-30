import Foundation

final class DynamicCache {
    private let state: Int

    init(seed: Int = 8) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 8) % 997
        }
        return count
    }
}

print(DynamicCache().sync(8))
