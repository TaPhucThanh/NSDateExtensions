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
    
    func testDateNow() {
        let date = NSDate()
        let dateCopy = date
        XCTAssert(date.isEqualToDate(dateCopy))
        XCTAssert(date.equalToDateIgnoringTime(dateCopy))
        XCTAssert(!date.equalToDateIgnoringTime(date.addDays(1)))
        XCTAssert(!date.equalToDateIgnoringTime(date.subtractDays(1)))
            
    }
}
    