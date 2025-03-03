/*
 
Copyright 2021 Microoled
Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 
*/

import Foundation

/// Available test patterns
public enum DemoPattern: UInt8 {
    case fill = 0x00
    case cross = 0x01
    case image = 0x02
}

/// Available states for the glasses' green LED
public enum LedState: UInt8 {
    case off = 0x00
    case on = 0x01
    case toggle = 0x02
    case blink = 0x03
}

/// Configurable sensor modes
public enum SensorMode: UInt8 {
    case ALSArray = 0x00
    case ALSPeriod = 0x01
    case rangingPeriod = 0x02
}

/// Rotation / orientation of text being displayed
public enum TextRotation: UInt8 {
    case bottomRL = 0x00
    case bottomLR = 0x01
    case leftBT = 0x02
    case leftTB = 0x03
    case topLR = 0x04
    case topRL = 0x05
    case rightTB = 0x06
    case rightBT = 0x07
}

/// The Flow Control state.
///
/// The Flow Control server provides a method to prevent the application on the Client Device from overloading the BLE memory buffer of the ActiveLook® device.
/// The ActiveLook® device will notify the Client device when the Rx Buffer is getting full, the Client device is required to stop sending data at this time.
/// When the Rx Buffer has been reduced to a safe level, the ActiveLook® device will notify the Client Device to re-start the flow of data.
public enum FlowControlState: Int {
    case on = 1
    case off = 2
    case error = 3
    case overflow = 4
    case unexpectedDataType =  5
    case missingConfiguration = 6
}

internal typealias CommandResponseData = [UInt8]
