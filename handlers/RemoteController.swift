import Foundation

final class AsyncProcessor {
    private let state: Int

    init(seed: Int = 16) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 16) % 997
        }
        return result
    }
}

print(AsyncProcessor().render(16))
