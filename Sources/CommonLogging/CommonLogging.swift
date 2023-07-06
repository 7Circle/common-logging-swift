//             ___    ___    _____ __      __  ______
//    o O O   | __|  / _ \  |_   _|\ \    / / |zero12|
//   o        | _|  | (_) |   | |   \ \/\/ /  |mobile|
//  TS__[O]  _|_|_   \___/   _|_|_   \_/\_/   | team |
// {======|_| """ |_|"""""|_|"""""|_|"""""|___|""""""|
//./o--000'"`-0-0-'"`-0-0-'"`-0-0-'"`-0-0-'"""`-0--0-'

import Foundation
import os

/// Wrapper for OS Logger that helps to standardize the way logs are printed.
public struct CommonLogging<E: RawRepresentable> {
    private let logger: Logger
    public typealias AppLogger = os.Logger

    /// Initialize a new instance of the logger
    public init(logger: Logger = Logger()) {
        self.logger = logger
    }

    /// Log an informative message.
    /// - parameters:
    ///     - category: Category of the informative message
    ///     - message: String to log
    public func logInfo(_ category: E, _ message: String) where E.RawValue == String {
        logger.info("[\(category.rawValue)] \(message)")
    }

    /// Log an error message.
    /// - parameters:
    ///     - category: Category of the informative message
    ///     - message: String to log
    public func logError(_ category: E, _ message: String) where E.RawValue == String {
        logger.error("[\(category.rawValue)] \(message)")
    }
}
