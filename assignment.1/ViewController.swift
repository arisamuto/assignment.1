//
//  ViewController.swift
//  assignment.1
//
//  Created by Arisa Muto on 2019/05/28.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    @IBOutlet var textview: UITextView!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.cyan
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //ステータスバーを非表示にするためオーバーライドする
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func move(_sender: Any) {
//        let storyboard: UIStoryboard = self.storyboard!
//        let second = storyboard.instantiateViewController(withIdentifier: "second") as! SecondViewController
//        second.text1 = ""
//        self.present(second, animated: true, completion: nil)
//        navigationController?.pushViewController(second, animated: true)
        performSegue(withIdentifier: "toSecond", sender: textview.text)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        if segue.identifier! == "toSecond" {
            print("now, segue to secondVC")
            let dest = segue.destination as! SecondViewController
            if sender != nil {
                let data = sender as! String
                dest.text1 = data
            }
        }
        
    }
}
