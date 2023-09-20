//  ______   ______    ______   __     __
// /\  ___\ /\  __ \  /\__  _\ /\ \  _ \ \
// \ \  __\ \ \ \/\ \ \/_/\ \/ \ \ \/ ".\ \
//  \ \_\    \ \_____\   \ \_\  \ \__/".~\_\
//   \/_/     \/_____/    \/_/   \/_/   \/_/
//

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
