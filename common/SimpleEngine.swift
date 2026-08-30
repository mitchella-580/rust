import Foundation

final class SmartController {
    private let state: Int

    init(seed: Int = 79) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 79) % 997
        }
        return acc
    }
}

print(SmartController().collect(79))
