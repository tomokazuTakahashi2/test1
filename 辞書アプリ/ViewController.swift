//
//  ViewController.swift
//  辞書アプリ
//
//  Created by ラファエル on 2019/08/03.
//  Copyright © 2019 takahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
 
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func button(_ sender: Any) {
        let dictionary: [String : String] = [
            "apple":"りんご",
            "banana":"バナナ",
            "grape":"ぶどう",
            "peach":"もも",
            "pear":"なし"
        ]
        let inputText : String = textField.text!
        
        if let word : String = dictionary[inputText]{
            label.text = word
        }else{
            label.text = "登録されていません"
        }
    }
}

