
import XCTest
@testable import DictionaryCoder

final class DictionaryEncoderTests: XCTestCase {
    func testCoder_structのエンコードテスト() throws {
        struct Person: Codable {
            var name: String
            var age: Int
        }
        
        let alice = Person(name: "Alice", age: 16)
        let encoder = DictionaryEncoder()
        let content = try encoder.encode(alice) as NSDictionary
        
        XCTAssertEqual(
            content,
            [
                "name": "Alice",
                "age": 16
            ] as NSDictionary
        )
    }
    
    func testCoder_structのデコードのテスト() throws {
        struct Person: Codable, Equatable {
            var name: String
            var age: Int
        }
        
        let content = [
            "name": "Alice",
            "age": 16
        ] as NSDictionary
        
        let decoder = DictionaryDecoder()
        let alice = try decoder.decode(Person.self, from: content)
        
        XCTAssertEqual(alice, Person(name: "Alice", age: 16))
    }
}
