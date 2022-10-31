//                                     _      ___              _
//     ___    ___      _ _    ___     / |    |_  )     o O O  | |_     ___    __ _    _ __
//    |_ /   / -_)    | '_|  / _ \    | |     / /     o       |  _|   / -_)  / _` |  | '  \
//   _/__|   \___|   _|_|_   \___/   _|_|_   /___|   TS__[O]  _\__|   \___|  \__,_|  |_|_|_|
// _|"""""|_|"""""|_|"""""|_|"""""|_|"""""|_|"""""| {======|_|"""""|_|"""""|_|"""""|_|"""""|
// "`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'

import Foundation
import os

public struct CommonLogging {
    private let logger: Logger
    public typealias AppLogger = os.Logger

    public init(logger: Logger = Logger()) {
        self.logger = logger
    }
    
    public func logInfo<E: RawRepresentable>(_ category: E, _ message: String) where E.RawValue == String {
        logger.info("[\(category.rawValue)] \(message)")
    }

    public func logError<E: RawRepresentable>(_ category: E, _ message: String) where E.RawValue == String {
        logger.error("[\(category.rawValue)] \(message)")
    }
}
