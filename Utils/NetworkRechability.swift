//
//  NetworkRechability.swift
//  SwiftUI Combine and Data (iOS)
//
//  Created by Ashraful Islam Rupu on 5/21/22.
//

import Foundation
import SystemConfiguration

class NetworkRechability: ObservableObject {
    @Published var reachable: Bool = false
    private let reachability = SCNetworkReachabilityCreateWithName(nil, "www.designcode.io")
    
    
    init() {
        self.reachable = checkConnection()
    }
    
    func checkConnection() -> Bool {
        var flags = SCNetworkReachabilityFlags()
        //Check if the network ok for this link
        SCNetworkReachabilityGetFlags(reachability!, &flags)
        
        return isNetworkRechable(with: flags)
    }
    
    
    //Check Connection Status
    private func isNetworkRechable(with flags: SCNetworkReachabilityFlags) -> Bool {
        let isReachable = flags.contains(.reachable)
        let connectionRequired = flags.contains(.connectionRequired)
        let canConnectAutomatically = flags.contains(.connectionOnDemand)  || flags.contains(.connectionOnTraffic)
        let canConnectWithoutIntervention = canConnectAutomatically && (flags.contains(.interventionRequired))
        return isReachable && (!connectionRequired || canConnectWithoutIntervention)
    }
}
