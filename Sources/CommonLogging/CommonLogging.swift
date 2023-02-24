//             ___    ___    _____ __      __  ______
//    o O O   | __|  / _ \  |_   _|\ \    / / |zero12|
//   o        | _|  | (_) |   | |   \ \/\/ /  |mobile|
//  TS__[O]  _|_|_   \___/   _|_|_   \_/\_/   | team |
// {======|_| """ |_|"""""|_|"""""|_|"""""|___|""""""|
//./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"""`-0--0-'

import Foundation
import os

public struct CommonLogging<E: RawRepresentable> {
    private let logger: Logger
    public typealias AppLogger = os.Logger

    public init(logger: Logger = Logger()) {
        self.logger = logger
    }
    
    public func logInfo(_ category: E, _ message: String) where E.RawValue == String {
        logger.info("[\(category.rawValue)] \(message)")
    }

    public func logError(_ category: E, _ message: String) where E.RawValue == String {
        logger.error("[\(category.rawValue)] \(message)")
    }
}
