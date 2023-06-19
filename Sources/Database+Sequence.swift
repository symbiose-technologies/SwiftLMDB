//
//  Database+Sequence.swift
//  SwiftLMDB
//
//  Created by August Heegaard on 25/02/2020.
//

extension LMDB_Database: Sequence {

    public typealias Iterator = Cursor
    
    public func makeIterator() -> LMDB_Database.Iterator {
        return try! cursor()
    }
    
    public var underestimatedCount: Int {
        return count
    }
    
}
