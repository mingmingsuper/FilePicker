//
//  ViewController.swift
//  FilePicker
//
//  Created by liumingming on 2018/2/1.
//  Copyright © 2018年 LMM. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onClickSelectFile(_ sender: Any) {
        print(String(kUTTypePDF))
        
        let documentPicker = UIDocumentPickerViewController(documentTypes: ["public.content"], in: UIDocumentPickerMode.open)
        documentPicker.modalPresentationStyle = .formSheet
        self.present(documentPicker, animated: true, completion: nil)
    }
}

