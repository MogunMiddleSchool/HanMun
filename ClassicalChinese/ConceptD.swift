//
//  ConceptA.swift
//  ClassicalChinese
//
//  Created by 위현욱 on 9/30/23.
//

import UIKit

class ConceptD: UIViewController {
    @IBOutlet weak var sendButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Question") as? QuestionViewController else { return }
        nextVC.data = ["주술","0","0"]
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: false,completion: nil)
    }
    */

}
