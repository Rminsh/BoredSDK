<img src="Preview/BoredSDK.png" width="192" align="right" hspace="20" />

# Bored SDK
[![Swift version: 5.3](https://img.shields.io/badge/Swift-5.3-orange)](https://github.com/Rminsh/BoredSDK/blob/master/Package.swift)[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://github.com/Rminsh/BoredSDK/blob/master/LICENSE)

BoredSDK is a cross-platform Swift framework to communicate with the [Bored api](https://www.boredapi.com/) . See their documentation for further details.



## Installation ⬇️

#### Swift Package manager

Open Xcode, go to `File > Swift Packages > Add Package Dependency...` and add `https://github.com/Rminsh/BoredSDK` to your project.

Or add `.package(url: "https://github.com/Rminsh/BoredSDKr", from: "1.0.0")` to your `Package.swift` file



## Usage 🛠

For simple **activity** request:
```swift
import BoredSDK

let resource = ActivityResource()

let request = BoredSDK(resource: resource)
request.execute { result in
    switch result {
    case .success:
        let activity = try? result.get()
        /// Do something with activity data
        
    case .failure(.badNetworkingRequest):
        print("Network error (Bad request)")
        
    case .failure(.errorParse):
        print("Network error (Parse error")
        
    case .failure(.unexpectedError):
        print("Network error (Unexpected error")
    }
}
```
Or to request an **acitvity with filter**:

```swift
import BoredSDK

let resource = ActivityResource(
	type: ActivityType.charity.rawValue, // You can get all the acitivity types from `ActivityType`
    participants: "1",
    maxprice: "1.0"
)

let request = BoredSDK(resource: resource)
request.execute { result in
    switch result {
    case .success:
        let activity = try? result.get()
        /// Do something with activity data
        
    case .failure(.badNetworkingRequest):
        print("Network error (Bad request)")
        
    case .failure(.errorParse):
        print("Network error (Parse error")
        
    case .failure(.unexpectedError):
        print("Network error (Unexpected error")
    }
}
```


## Contribute 🧩

Want to contribute? I would really appreciate a hand with the development to add more features in this app.
Feel free to Fork, edit, then pull!



## Copyright Notice 📝

Copyright (C) 2021 Armin Shalchian

Licensed under the [GNU Version 3](https://www.gnu.org/licenses/gpl-3.0.en.html) license (see the LICENSE file).

The icon is inspired by [Bored eyes](https://dribbble.com/shots/5536525-Bored-Eyes)
