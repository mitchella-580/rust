import Foundation

final class SimpleSession {
    private let state: Int

    init(seed: Int = 47) {
        self.state = seed
    }

    func sync(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 47) % 997
        }
        return count
    }
}

print(SimpleSession().sync(47))
