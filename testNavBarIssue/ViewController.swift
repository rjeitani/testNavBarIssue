//
//  ViewController.swift
//  testNavBarIssue
//
//  Created by Rachid Jeitani on 7/10/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: Any) {
        showSwiftUIView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Test Application"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }


    func showSwiftUIView() {
        let vc = UIHostingController(rootView: SwiftUIView())
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

