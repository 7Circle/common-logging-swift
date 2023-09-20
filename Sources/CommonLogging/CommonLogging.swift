//  ______   ______    ______   __     __
// /\  ___\ /\  __ \  /\__  _\ /\ \  _ \ \
// \ \  __\ \ \ \/\ \ \/_/\ \/ \ \ \/ ".\ \
//  \ \_\    \ \_____\   \ \_\  \ \__/".~\_\
//   \/_/     \/_____/    \/_/   \/_/   \/_/
//

import os

/// Wrapper for OS Logger that helps to standardize the way logs are printed.
public struct CommonLogging<E: RawRepresentable> {
    private let logger: Logger
    public typealias AppLogger = os.Logger

    /// Creates a logger for logging to the default subsystem.
    ///
    ///- Parameters:
    ///     - logger: logger for logging to the default subsystem, if not passed the default os Logger is used.
    public init(logger: Logger = Logger()) {
        self.logger = logger
    }

    /// Logs a string interpolation at the `info` level.
    ///
    /// Values that can be interpolated include signed and unsigned Swift integers, Floats,
    /// Doubles, Bools, Strings, NSObjects, UnsafeRaw(Buffer)Pointers, values conforming to
    /// `CustomStringConvertible` like Arrays and Dictionaries, and metatypes like
    /// `type(of: c)`, `Int.self`.
    ///
    /// Examples
    /// ========
    ///
    ///     let logger = CommonLogging<E: RawRepresentable>()
    ///     let category: E
    ///     let message: String = "message"
    ///     logger.info(category, message)
    ///
    /// Formatting Interpolated Expressions and Specifying Privacy
    /// ==========================================================
    ///
    /// Formatting and privacy options for the interpolated values can be passed as arguments
    /// to the interpolations. These are optional arguments. When not specified, they will be set to their
    /// default values.
    ///
    ///     logger.logInfo(.testEnviroment, "An unsigned integer \(x, format: .hex, align: .right(columns: 10))")
    ///     logger.logInfo(.testEnviroment, "An unsigned integer \(x, privacy: .private)")
    ///
    /// - Warning: Do not explicity create OSLogMessage. Instead pass a string interpolation.
    ///
    /// - Parameters:
    ///    - category: category
    ///    - message: A string interpolation.
    public func logInfo(_ category: E, _ message: String) where E.RawValue == String {
        logger.info("[\(category.rawValue)] \(message)")
    }

    /// Logs a string interpolation at the `error` level.
    ///
    /// Values that can be interpolated include signed and unsigned Swift integers, Floats,
    /// Doubles, Bools, Strings, NSObjects, UnsafeRaw(Buffer)Pointers, values conforming to
    /// `CustomStringConvertible` like Arrays and Dictionaries, and metatypes like
    /// `type(of: c)`, `Int.self`.
    ///
    /// Examples
    /// ========
    ///
    ///     let logger = CommonLogging<E: RawRepresentable>()
    ///     let category: E
    ///     let message: String = "message"
    ///     logger.info(category, message)
    ///
    /// Formatting Interpolated Expressions and Specifying Privacy
    /// ==========================================================
    ///
    /// Formatting and privacy options for the interpolated values can be passed as arguments
    /// to the interpolations. These are optional arguments. When not specified, they will be set to their
    /// default values.
    ///
    ///     commonLoggin.logError(.testEnviroment, "An unsigned integer \(x, format: .hex, align: .right(columns: 10))")
    ///     commonLoggin.logError(.testEnviroment, "An unsigned integer \(x, privacy: .private)")
    ///
    /// - Warning: Do not explicity create OSLogMessage. Instead pass a string interpolation.
    ///
    /// - Parameter message: A string interpolation.
    public func logError(_ category: E, _ message: String) where E.RawValue == String {
        logger.error("[\(category.rawValue)] \(message)")
    }
}
