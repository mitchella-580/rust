import Foundation

final class AtomicFactory {
    private let state: Int

    init(seed: Int = 80) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 80) % 997
        }
        return value
    }
}

print(AtomicFactory().sync(80))
