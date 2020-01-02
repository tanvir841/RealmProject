//
//  File.swift
//  RealmProject
//
//  Created by Tanvir on 1/1/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import Foundation
import RealmSwift

@objcMembers class Job: Object {
    dynamic var name = ""
    dynamic var desc = ""
    dynamic var id = Int()
}
