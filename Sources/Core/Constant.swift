//import XCGLogger

//let logger:XCGLogger = XCGLogger.default

let logger:XCGLogger = XCGLogger()

// Temp
open class XCGLogger {
    public enum Level: Int{
        case verbose
        case debug
        case info
        case warning
        case error
        case severe
        case none
        
        public var description: String {
            switch self {
            case .verbose:
                return "Verbose"
            case .debug:
                return "Debug"
            case .info:
                return "Info"
            case .warning:
                return "Warning"
            case .error:
                return "Error"
            case .severe:
                return "Severe"
            case .none:
                return "None"
            }
        }
        
        public static let all: [Level] = [.verbose, .debug, .info, .warning, .error, .severe]
    }
    
    open func isEnabledFor(level: XCGLogger.Level) -> Bool {
        return false
    }
    open func error(_ string:String?) {
    }
    open func info(_ string:String?) {
    }
    open func warning(_ string:String?) {
    }
    open func verbose(_ string:String?) {
    }
}

public enum CMSampleBufferType: String {
    case video = "video"
    case audio = "audio"
}
