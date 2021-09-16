//
//  BoredSDK.swift
//  
//
//  Created by armin on 9/13/21.
//

import Foundation

public class BoredSDK<Resource: BoredResource> {
    let resource: Resource
    
    public init(resource: Resource) {
        self.resource = resource
    }
}
 
extension BoredSDK: NetworkRequest {
    func decode(_ data: Data) -> Result<Resource.ModelType, NetworkingError> {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970
        do {
            let result = try decoder.decode(Resource.ModelType.self, from: data)
            return .success(result)
        } catch {
            print(error)
            return .failure(.errorParse)
        }
    }
    
    public func execute(withCompletion completion: @escaping (Result<Resource.ModelType, NetworkingError>) -> Void) {
        load(resource.url, withCompletion: completion)
    }
}
