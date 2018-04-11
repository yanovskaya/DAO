//
//  SQLiteConfiguration.swift
//  DAO
//
//  Created by Елена Яновская on 25.02.2018.
//  Copyright © 2018 Elena Yanovskaya. All rights reserved.
//

import Foundation

public struct SQLiteConfiguration {
    let tableName: String
    
    public init(tableName: String = "Table") {
        self.tableName = tableName
    }
}
