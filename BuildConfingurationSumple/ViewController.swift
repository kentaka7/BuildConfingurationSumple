//
//  ViewController.swift
//  BuildConfingurationSumple
//
//  Created by Naohiro Takakura on 2020/04/02.
//  Copyright © 2020 Naohiro Takakura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hoge = Bundle.main.object(forInfoDictionaryKey: "kHogehoge")
        let kBundle = Bundle.main.object(forInfoDictionaryKey: "kBundle_id_suffix")
        
        print(kBundle)
        
        
        #if DEVELOP
        self.testLabel.text = "開発中"
        #elseif STAGING
        self.testLabel.text = "確認してください"
        #else
        self.testLabel.text = "本番向けです"
        #endif

    }


}

