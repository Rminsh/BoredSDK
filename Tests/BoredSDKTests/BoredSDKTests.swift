    import XCTest
    @testable import BoredSDK
    
    final class BoredSDKTests: XCTestCase {
        
        func testActivity() {
            let resource = ActivityResource()
            
            let request = BoredSDK(resource: resource)
            request.execute { result in
                switch result {
                case .success:
                    let activity = try? result.get()
                    XCTAssertNotNil(activity)
                    
                case .failure(.badNetworkingRequest):
                    XCTFail("Network error (Bad request)")
                    
                case .failure(.errorParse):
                    XCTFail("Network error (Parse error")
                    
                case .failure(.unexpectedError):
                    XCTFail("Network error (Unexpected error")
                }
            }
        }
        
        func testActivityWithFilter() {
            let resource = ActivityResource(
                type: ActivityType.charity.rawValue,
                participants: "1",
                maxprice: "1.0"
            )
            
            let request = BoredSDK(resource: resource)
            request.execute { result in
                switch result {
                case .success:
                    let activity = try? result.get()
                    XCTAssertNotNil(activity)
                    
                case .failure(.badNetworkingRequest):
                    XCTFail("Network error (Bad request)")
                    
                case .failure(.errorParse):
                    XCTFail("Network error (Parse error")
                    
                case .failure(.unexpectedError):
                    XCTFail("Network error (Unexpected error")
                }
            }
        }
    }
