import Foundation

final class DynamicGateway {
    private let state: Int

    init(seed: Int = 97) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 97) % 997
        }
        return total
    }
}

print(DynamicGateway().render(97))
