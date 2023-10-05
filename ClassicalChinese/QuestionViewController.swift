//
//  Question.swift
//  ClassicalChinese
//
//  Created by 위현욱 on 9/30/23.
//

import UIKit

func plist_load(name:String) -> Array<Any> {
    let 병렬t = Bundle.main.url(forResource: name, withExtension: "plist")!

    let 병렬리스트 = NSArray(contentsOf: 병렬t)!
    return (병렬리스트[Int.random(in: 0...병렬리스트.count-1)] as? Array<Any>)!
}


class QuestionViewController: UIViewController {
    

    @IBOutlet weak var 필드: UITextField!
    @IBOutlet weak var 한자뜻: UILabel!
    @IBOutlet weak var 한자: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    var data : Array = ["","",""]
    var 답 : Array = [""]
    var score : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let 리스트 = plist_load(name: data[0])
        score = data[1]
        답 = (리스트[0] as! String).components(separatedBy: [","])
        한자뜻.text = ((리스트[1] as? String)?.replacingOccurrences(of: " ", with: "(").replacingOccurrences(of: ",", with: ")ㅤㅤㅤㅤㅤ   "))! + ")"
        한자.font = UIFont(name: "HYhaeseo", size: 80.0)
        한자.text = (리스트[2] as? String)?.replacingOccurrences(of: ",", with: "")
        
    }
    
    @IBAction func sendData(_ sender: Any) {
        if(답.contains(필드.text!)) {
            score = String(Int(score)! + 1)
        }
        if(data[2] == "5") {
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Result") as? ResultViewController else { return }
            nextVC.data = [String(data[0]),score,String(Int(data[2])!+1)]
            nextVC.modalPresentationStyle = .fullScreen
            self.present(nextVC, animated: false,completion: nil)
        }
        else {
            guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "Question") as? QuestionViewController else { return }
            nextVC.data = [String(data[0]),score,String(Int(data[2])!+1)]
            nextVC.modalPresentationStyle = .fullScreen
            self.present(nextVC, animated: false,completion: nil)
        }
    }
}
