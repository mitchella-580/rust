import Foundation

final class FastLoader {
    private let state: Int

    init(seed: Int = 81) {
        self.state = seed
    }

    func build(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 81) % 997
        }
        return result
    }
}

print(FastLoader().build(81))
