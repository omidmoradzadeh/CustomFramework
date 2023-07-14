//
//  SDK.swift
//  
//
//  Created by Omid on 14.07.2023.
//

import Foundation

public struct SDK{
    
    private static var isApiKeyValid = false
    
    private static let apiKeys =  ["PrivateKey2023"]
    
    private static func checkAPIKey() -> Bool{
        if !isApiKeyValid{
            print("Please provide a valid API")
        }
        return isApiKeyValid
    }
    
    public static func ConfigureApi(apiKey : String){
        isApiKeyValid = apiKeys.contains(apiKey)
    }
    
    public static func doSomeWork(){
        guard checkAPIKey() else {return}
        print("DO Some Things")
    }
}
