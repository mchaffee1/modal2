//
//  ViewController.swift
//  modal2
//
//  Created by Michael Chaffee on 1/24/18.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func presentSecondViewControllerTap(_ sender: Any) {
        presentSecondViewController()
    }

    func presentSecondViewController() {
        let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")

        present(secondViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

