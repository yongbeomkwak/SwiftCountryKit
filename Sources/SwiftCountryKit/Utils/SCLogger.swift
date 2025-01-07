import os

enum SCLogger {
    fileprivate enum Level {
        case debug
        case error

        fileprivate var symbol: String {
            switch self {
            case .debug: "🔵"
            case .error: "🔴"
            }
        }

        fileprivate var category: String {
            switch self {
            case .debug: "DEBUG"
            case .error: "ERROR"
            }
        }
    }
}

private extension SCLogger {
    static func log(
        _ message: Any,
        level: Level,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {

    #if DEBUG
        let fileName = file.components(separatedBy: "/").last ?? "unknown.swift"
        let functionName = function.components(separatedBy: "(").first ?? "unknown"
        let footerMessage = "\(fileName) | \(functionName):\(line)"

        let logMessage = "[\(level.symbol) \(level.category)] > \(message)\n-> \(footerMessage)"
        switch level {
        case .debug:
            print("\(logMessage)")
        case .error:
            print("\(logMessage)")
        }
    #endif
    }
}

extension SCLogger {
    static func printDebug(
        _ message: Any,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        SCLogger.log(
            message,
            level: .debug,
            file: file,
            function: function,
            line: line
        )
    }
    static func printError(
        _ message: Any,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        SCLogger.log(
            message,
            level: .error,
            file: file,
            function: function,
            line: line
        )
    }

}
