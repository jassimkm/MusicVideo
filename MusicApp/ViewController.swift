//
//  ViewController.swift
//  MusicApp
//
//  Created by Jassim Mukthar on 10/03/16.
//  Copyright © 2016 Jassim Mukthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
        
    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    func didLoadData(videos:  [Videos]) {
        
        print(reachabilityStatus)
        
        for item in videos{
             print("name =\(item.vName)")
        }
        
        for (index , item) in videos.enumerate(){
            print("\(index) name = \(item.vName)")
        }
    
    }
//
//        let alert = UIAlertController(title: result, message: nil, preferredStyle: .Alert)
//        
//        let okAction = UIAlertAction(title: "Ok", style: .Default) { action -> Void in
//
//        }
//            alert.addAction(okAction)
//            self.presentViewController(alert, animated: true, completion: nil)
//    }

//}

