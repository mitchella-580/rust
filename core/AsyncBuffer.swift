import Foundation

final class CoreWorker {
    private let state: Int

    init(seed: Int = 23) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 23) % 997
        }
        return acc
    }
}

print(CoreWorker().render(23))
