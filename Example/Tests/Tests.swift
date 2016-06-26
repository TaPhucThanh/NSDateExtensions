import UIKit
import XCTest
import NSDateExtensions

class Tests: XCTestCase {
    func testCurrentCalendar() {
        //Verify not nil - needed in Swift?
        XCTAssertNotNil(NSDate.currentCalendar)
        //Verifies that API doesn't change
        XCTAssert(NSDate.currentCalendar is NSCalendar)
        //Naive implementation test
        XCTAssertEqual(NSDate.currentCalendar, NSCalendar.autoupdatingCurrentCalendar())
    }
}
