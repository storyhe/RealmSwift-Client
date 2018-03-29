//
//  RealmClient.swift
//  test
//
//  Created by Hyeonwoo Park on 2018. 3. 29..
//  Copyright © 2018년 storyhe. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

open class RealmClient {
    
    static var db:Realm? {
        
        // 참고 url ; https://realm.io/kr/docs/swift/latest/#migrations
        var config = Realm.Configuration(
            schemaVersion: 1,
            migrationBlock: { migration, oldSchemaVersion in
                
                if (oldSchemaVersion < 1) {
                    // 마이그레이션
                }
        })
        
        // 참고 url ; https://realm.io/kr/docs/swift/latest/#realms
        // realmdb 파일 저장할곳을 지정한다.
        if let fileurl = config.fileURL {
            config.fileURL = fileurl.deletingLastPathComponent().appendingPathComponent("db.realm")
            Realm.Configuration.defaultConfiguration = config
        } else {
            return nil
        }
        
        do {
            print("Load Scucess")
            return try Realm()
        } catch let e as NSError {
            print(e)
            print("Load Fail")
            return nil
        }
    }
    
    static func write(_ object:Object) -> Bool {
        do {
            try self.db?.write { self.db?.add(object) }
            return true
        } catch {
            return false
        }
    }
    
    static func find(_ object:Object.Type) -> Results<Object>? {
        return self.db?.objects(object)
    }
    

    
}
