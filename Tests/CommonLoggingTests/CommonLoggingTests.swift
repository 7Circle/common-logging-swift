//             ___    ___    _____ __      __  ______
//    o O O   | __|  / _ \  |_   _|\ \    / / |zero12|
//   o        | _|  | (_) |   | |   \ \/\/ /  |mobile|
//  TS__[O]  _|_|_   \___/   _|_|_   \_/\_/   | team |
// {======|_| """ |_|"""""|_|"""""|_|"""""|___|""""""|
//./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"""`-0--0-'

import XCTest
@testable import CommonLogging
import Foundation

final class CommonLoggingTests: XCTestCase {
    func testFunclogInfoIsExists() {
        let commonLoggin = CommonLogging<LogCategoryTestModel>()
        commonLoggin.logInfo(.testEnviroment, "Test!")
    }

    func testFunclogErrorExists() {
        let commonLoggin = CommonLogging<LogCategoryTestModel>()
        commonLoggin.logInfo(.testEnviroment, "Test!")
    }
}
