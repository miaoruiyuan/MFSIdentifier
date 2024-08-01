// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import MFSIdentifierObjC

public struct MFSIdentifierSwift {
    public static func deviceID() -> String {
       return MFSIdentifier.deviceID()
    }
}



