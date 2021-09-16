//
//  Activity.swift
//  
//
//  Created by armin on 9/13/21.
//

import Foundation

public struct Activity: Codable {
    public init(
        activity: String,
        type: String,
        participants: Int,
        price: Double,
        link: String?,
        key: String?,
        accessibility: Double
    ) {
        self.activity = activity
        self.type = type
        self.participants = participants
        self.price = price
        self.link = link
        self.key = key
        self.accessibility = accessibility
    }
    
    public let activity, type: String
    public let participants: Int
    public let price: Double
    public let link, key: String?
    public let accessibility: Double
}

public enum ActivityType: String, CaseIterable, Identifiable, CustomStringConvertible {
    case education
    case recreational
    case social
    case diy
    case all
    case charity
    case cooking
    case relaxation
    case music
    case busyWork
    
    public var id: String { self.rawValue }
    public var description: String { self.rawValue }
}
