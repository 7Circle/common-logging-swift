import Foundation
import os

public struct CommonLogging {
    private let logger: Logger
    public typealias AppLogger = os.Logger

    public init(logger: Logger = Logger()) {
        self.logger = logger
    }
    
    public func logInfo(_ category: LogCategory, _ message: String) {
        logger.info("[\(category.rawValue)] \(message)")
    }

    public func logError(_ category: LogCategory, _ message: String) {
        logger.error("[\(category.rawValue)] \(message)")
    }
}

public enum LogCategory: String {
    case login = "Login"
    case auth = "Auth"
    case network = "Network"
}
