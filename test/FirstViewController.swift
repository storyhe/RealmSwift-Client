//
//  FirstViewController.swift
//  test
//
//  Created by Hyeonwoo Park on 2018. 3. 29..
//  Copyright © 2018년 storyhe. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func write(_ btn:UIButton) {
        let money = Money()
        money.price = 0
        money.name = "배고픔"
        
        // 씀!
        if RealmClient.write(money) == true {
            print("write success")
        } else {
            print("write fail")
        }
    }
    
    @IBAction func read(_ btn:UIButton) {
        //읽어온다
        if let objects = RealmClient.find(Money.self) {
            for object in objects {
                print(object)
            }
        }
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

