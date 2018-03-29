//
//  Money.swift
//  test
//
//  Created by Hyeonwoo Park on 2018. 3. 29..
//  Copyright © 2018년 storyhe. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class Money: Object {
    @objc dynamic var name:String = ""
    @objc dynamic var price:Int = 0
    @objc dynamic var time:Date = Date()
}
