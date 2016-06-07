//
//  ViewController.swift
//  MusicVideo
//
//  Created by Gilbert Mujunga on 07.06.16.
//  Copyright © 2016 Gilbert Mujunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let api = APIManager()
        api.loadData("https://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
    }
    func didLoadData(result:String){
        let alert = UIAlertController(title: (result), message: nil , preferredStyle: .Alert)
        let okAction  = UIAlertAction(title: "ok" , style: .Default) { action -> Void in
         // do something you want
        }
        alert.addAction(okAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }

   


}

