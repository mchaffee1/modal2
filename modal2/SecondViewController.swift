//
//  SecondViewController.swift
//  modal2
//
//  Created by Michael Chaffee on 1/24/18.
//  Copyright © 2018 ThoughtWorks. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    @IBOutlet weak var containerView: UIView?

    weak var webView: WKWebView?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        embedWebview()
        loadIndexFile()
    }

    func embedWebview() {
        guard let bounds = containerView?.bounds else {
            fatalError("Could not get bounds for containerView")
        }
        let webView = WKWebView(frame: bounds)
        containerView?.addSubview(webView)
        self.webView = webView
    }

    func loadIndexFile() {
        guard let fileUrl = Bundle.main.url(forResource: "index", withExtension: "html") else {
            fatalError("Could not get file url for index.html")
        }
        webView?.load(URLRequest(url: fileUrl))
    }

    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        print("SecondViewController: dismiss() called")
        guard presentedViewController != nil else {
            print("SecondViewController: presentedViewController is nil - dismiss() cancelled")
            return
        }
        super.dismiss(animated: flag, completion: completion)
    }
}
