//
//  ActivityResource.swift
//  
//
//  Created by armin on 9/13/21.
//

import Foundation

public struct ActivityResource: BoredResource {
    public init(
        key: String? = nil,
        type: String? = nil,
        participants: String? = nil,
        minprice: String? = nil,
        maxprice: String? = nil,
        accessibility: String? = nil,
        minaccessibility: String? = nil,
        maxaccessibility: String? = nil
    ) {
        self.key = key
        self.type = type
        self.participants = participants
        self.minprice = minprice
        self.maxprice = maxprice
        self.accessibility = accessibility
        self.minaccessibility = minaccessibility
        self.maxaccessibility = maxaccessibility
    }
    
    public var key: String?
    
    public var type: String?
    
    public var participants: String?
    
    public var minprice: String?
    
    public var maxprice: String?
    
    public var accessibility: String?
    
    public var minaccessibility: String?
    
    public var maxaccessibility: String?
    
    public typealias ModelType = Activity
}
