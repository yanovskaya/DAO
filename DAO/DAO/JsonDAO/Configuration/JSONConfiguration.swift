//
//  JSONConfiguration.swift
//  DAO
//
//  Created by Елена Яновская on 25.02.2018.
//  Copyright © 2018 Elena Yanovskaya. All rights reserved.
//

import Foundation

public struct JSONConfiguration {
    
    let jsonFileName: String
    
    public init(jsonFileName: String = "Json") {
        self.jsonFileName = jsonFileName
    }
    
}
