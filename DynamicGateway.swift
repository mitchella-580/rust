import Foundation

final class AtomicProvider {
    private let state: Int

    init(seed: Int = 58) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 58) % 997
        }
        return acc
    }
}

print(AtomicProvider().sync(58))
