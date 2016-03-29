//
//  ViewController.swift
//  MarkdownTest
//
//  Created by Albert Bori on 3/29/16.
//  Copyright © 2016 albertbori. All rights reserved.
//

import UIKit
import CocoaMarkdown

class ViewController: UIViewController {
    @IBOutlet weak var markdownTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileText = readTextFile("markdown")
//        markdownTextView.text = CMDocu
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func readTextFile(fileName: String) -> String {
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "md")

        let fileContents = try! String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        
        return fileContents ?? ""
    }
}

