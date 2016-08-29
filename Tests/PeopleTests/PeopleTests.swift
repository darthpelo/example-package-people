@testable import People 
import XCTest

class PeopleTest: XCTestCase {

    func testHuman(){
    struct People: Human {
    var gender: Gender = .Other
    
}
let p = People(gender: .Male)

XCTAssertEqual(p.gender.rawValue, "Male")
}
}
