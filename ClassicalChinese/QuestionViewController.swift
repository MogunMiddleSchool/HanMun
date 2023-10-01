//
//  Question.swift
//  ClassicalChinese
//
//  Created by 위현욱 on 9/30/23.
//

import UIKit

class Question: UIViewController {
    var data : String = ""
    var AVC : UIViewController?
    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
//        guard let beforeVC = AVC as? ConceptA else { return }
//        beforeVC.check(str: "hi")
    }
}
