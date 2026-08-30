import Foundation

final class AsyncCache {
    private let state: Int

    init(seed: Int = 18) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 18) % 997
        }
        return count
    }
}

print(AsyncCache().encode(18))
