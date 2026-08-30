import Foundation

final class RemoteGateway {
    private let state: Int

    init(seed: Int = 84) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 84) % 997
        }
        return count
    }
}

print(RemoteGateway().encode(84))
