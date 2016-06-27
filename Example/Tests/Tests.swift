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
    
    func testDateEquality() {
        let date = NSDate()
        let dateCopy = date
        XCTAssert(date.isEqualToDate(dateCopy))
        XCTAssert(date.equalToDateIgnoringTime(dateCopy))
    }
    
    func testDateToday() {
        //As long as we've tested this first, we can use it to verify
        XCTAssert(NSDate().equalToDateIgnoringTime(NSDate.now()))
        XCTAssert(NSDate().equalToDateIgnoringTime(NSDate.today()))
        XCTAssert(NSDate.now().today())
        XCTAssert(NSDate.today().today())
    }
    
    func testRelativeDates() {
        let oneDayAgo = NSDate().subtractDays(1)
        let daysAgo = oneDayAgo.daysAgo()
        XCTAssert(daysAgo == 1)
        
        let oneDayFromNow = NSDate().addDays(1)
        let daysFromNow = oneDayFromNow.daysFromNow()
        XCTAssert(daysFromNow == 1)
    }
}
    