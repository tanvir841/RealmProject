//
//  ViewController.swift
//  RealmProject
//
//  Created by Tanvir on 1/1/20.
//  Copyright © 2020 tanvir841. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(realm.configuration.fileURL)
        
        let currentID = realm.objects(Job.self).max(ofProperty: "id") as Int? ?? 0
        let job = Job()
        job.id = currentID + 1
        job.name = "Some"
        job.desc = "Something"

//        do {
//            try realm.write {
//                realm.add(job)
//                print("saved")
//            }
//        } catch {-
//            print("Not Saved")
//        }
//
        let data = realm.objects(Job.self)
        print(data)

//        do {
//            try realm.write {
//                data.name = "Sifatullah"
//                data.desc = "Soldier"
//                print("Updated!")
//            }
//        } catch {
//            print("NOt Updated")
//        }
//
//        do {
//            try realm.write {
//                data!.desc = "Soft Eng"
//                print("Updated")
//            }
//        }
//        catch {
//            print("failed")
//        }

    }


}

