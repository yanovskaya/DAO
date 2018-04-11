//
//  JsonDAO.swift
//  DAO
//
//  Created by Елена Яновская on 25.02.2018.
//  Copyright © 2018 Elena Yanovskaya. All rights reserved.
//

import Foundation

open class JsonDAO {
    
    open let pathJson: String
    
    open var fileManager: FileManager!
    open var cache: URL?
    
    public init(configuration: JSONConfiguration = JSONConfiguration()) {
        pathJson = configuration.jsonFileName
        loadJson()
    }
    
    open func loadJson() {
        fileManager = FileManager.default
        cache = fileManager.urls(for: .cachesDirectory, in: .userDomainMask).first
    }
    
    open func persist(_ entity: Data) {
        erase()
        guard let documentDirectoryUrl = cache else { return }
        let fileUrl = documentDirectoryUrl.appendingPathComponent(pathJson)
        do {
            try entity.write(to: fileUrl, options: [])
        } catch {
            print(error)
        }
    }
    
    open func read() -> Data? {
        if let url = cache?.appendingPathComponent(pathJson),
            let data = try? Data(contentsOf: url) {
            return data
        } else {
            return nil
        }
    }
    
    open func erase() {
        guard let documentDirectoryUrl = cache else { return }
        let fileUrl = documentDirectoryUrl.appendingPathComponent(pathJson)
        guard fileManager.fileExists(atPath: fileUrl.path) else { return }
        do {
            try fileManager.removeItem(at: fileUrl)
        } catch let error as NSError {
            print(error)
        }
    }
    
}
