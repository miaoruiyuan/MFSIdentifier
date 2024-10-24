import XCTest
import MFSIdentifierSPM
@testable import Objc

final class MFSIdentifierSPMTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest
        
        let deviceID = MFSIdentifierSPM.deviceID()
        debugPrint(deviceID)
        

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}
