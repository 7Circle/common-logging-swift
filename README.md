<img alt="logo image" src="https://s3.eu-west-1.amazonaws.com/it.zero12.common-libraries/digitalcloud-common-logging.jpeg" width="653"/>

# Digital Cloud Common Logging

Common Logging is a small Swift library created by the *Digital Cloud* Mobile Team to
standardize the way that logs are used in the app using the unified logging system.

# Overview

Common Logging helps to use a single way to log information and errors in Swift applications. Even if
it is a wrapper on OS Logger, the initialization of the logger instance requires an enum of all the
 categories of the app. In this way the developer is forced to categorize every message sent to the console.

## Quick start

To use the logged must be defined the list of log categories like this:
``` swift
enum LogsCategory: String {
    case category1
    case category2
    case category3
    case category4
}
```

After that the logged can be initialized as follow:
``` swift
let logger = CommonLogging<LogsCategory>()
```

The logger works better if injected when needed instead of initializing a new instance every
time is needed; in this way the `LogsCategory` is used in all the app without setting it
explicitly in every instance.

To log messages can be used the `logInfo` and `logError` functions.

## Installation

You can add Common Logging to an Xcode project by adding it to your project as a package.

> https://github.com/Digital-Cloud-Labs/common-logging-swift.git

You can add Common Logging in a [SwiftPM](https://swift.org/package-manager/) project by adding
it to the `Package.swift`:

``` swift
dependencies: [
  .package(url: "https://github.com/Digital-Cloud-Labs/common-logging-swift.git", .upToNextMajor(from: "1.0.0"))
]
```

And to the target:
``` swift
.product(name: "CommonLogging", package: "CommonLogging"),
```

Then just import it through:
```
import CommonLogging
```

## License

This library is released under the MIT license. See [LICENSE](LICENSE.txt) for details.

## About

Made with ❤️ by Digital Cloud. 
The names and logo are trademarks of Digital Cloud srl.
