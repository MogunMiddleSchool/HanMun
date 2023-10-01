//
//  ResultViewController.swift
//  ClassicalChinese
//
//  Created by 위현욱 on 10/1/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var 점수: UILabel!
    var data : Array = ["","",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        점수.text = data[1] + "/" + data[2]
    }

}
