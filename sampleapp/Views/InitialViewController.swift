//
//  InitialViewController.swift
//  sampleapp
//
//  Created by Giugliano Severo on 09/12/20.
//

import UIKit
import Lottie

class InitialViewController: BaseViewController {
    
    // 1. Create the AnimationView
    private var animationView: AnimationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        setupAnimation()
    }
    
    func setupAnimation() {
        // 2. Start AnimationView with animation name (without extension)
         
        animationView = .init(name: "dancing_morty")
        animationView!.frame = view.bounds
        
        // 3. Set animation content mode
        
        animationView!.contentMode = .scaleAspectFit
        
        // 4. Set animation loop mode
        
        animationView!.loopMode = .loop
        
        // 5. Adjust animation speed
        
        animationView!.animationSpeed = 0.5
        
        view.addSubview(animationView!)
        
        // 6. Play animation
        
        animationView!.play()
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
