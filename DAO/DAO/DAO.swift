//
//  DAO.swift
//  DAO
//
//  Created by Елена Яновская on 25.02.2018.
//  Copyright © 2018 Elena Yanovskaya. All rights reserved.
//

import Foundation

open class DAO<Model: Entity> {
    
    open func persist(_ entity: Model) {
        preconditionFailure()
    }
    
    open func persist(_ entities: [Model]) {
        preconditionFailure()
    }
    
    open func readElement() -> Model? {
        preconditionFailure()
    }
    
    open func read() -> [Model] {
        preconditionFailure()
    }
    
    open func erase() {
        preconditionFailure()
    }
}
