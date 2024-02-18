//
//  ViewController.swift
//  GradientProgress
//
//  Created by by on 2023/11/6.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        
        let view = GradientProgressView(frame: CGRect(x: 20, y: 100, width: 300, height: 20));
        view.backgroundColor = UIColor.gray;
        self.view.addSubview(view);
        progressView = view;
    }
    var progressView: GradientProgressView?;
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        progressView?.progress += 0.1;
    }

}

