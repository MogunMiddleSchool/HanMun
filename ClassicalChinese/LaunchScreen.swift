//
//  LoadingViewController.swift
//  ClassicalChinese
//
//  Created by 위현욱 on 9/25/23.
//

import UIKit
import Lottie

class LaunchScreen: UIViewController {
    private let animationView: LottieAnimationView = {
      let lottieAnimationView = LottieAnimationView(name: "book")
      return lottieAnimationView
    }()
    
    override func viewDidLoad() {
      super.viewDidLoad()

      // 1
      view.addSubview(animationView)

      // 2
      animationView.frame = view.bounds
      animationView.center = view.center

      // 3
      animationView.play { _ in
        UIView.animate(withDuration: 0.3, animations: {
          self.animationView.alpha = 0
        }, completion: { _ in
          self.animationView.isHidden = true
          self.animationView.removeFromSuperview()
        })
      }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
