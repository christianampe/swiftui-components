import Foundation

struct Message: Hashable, Codable {
    var id: String
    var content: Content
}

extension Message {
    enum Content {
        case text(String)
    }
}

extension Message.Content: Hashable, Codable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        if let value = try? values.decode(String.self, forKey: .text) {
            self = .text(value)
        } else {
            throw CodingError.decoding
        }
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        switch self {
        case .text(let text):
            try container.encode(text, forKey: .text)
        }
    }
}

extension Message.Content {
    private enum CodingKeys: String, CodingKey {
        case text
    }
    
    private enum CodingError: Error {
        case decoding
    }
}
