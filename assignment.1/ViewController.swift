//
//  ViewController.swift
//  assignment.1
//
//  Created by Arisa Muto on 2019/05/28.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var text: UITextView!
    @IBOutlet var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.cyan
        self.performSegue(withIdentifier: "toSecond", sender: nil)
        
        self.setNeedsStatusBarAppearanceUpdate()
    }
    //ステータスバーを非表示にするためオーバーライドする
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func move(_sender: Any) {
        let storyboard: UIStoryboard = self.storyboard!
        let second = storyboard.instantiateViewController(withIdentifier: "second")
        self.present(second, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SecondViewController" {
            _ = segue.destination as! SecondViewController
        }
        
    }
}
