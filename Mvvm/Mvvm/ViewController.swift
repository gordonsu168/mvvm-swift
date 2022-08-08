//
//  ViewController.swift
//  Mvvm
//
//  Created by huya on 2022/8/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let class_button = NSClassFromString("UIButton") as? UIControl.Type
        let but = class_button!.init()
        but.frame = CGRect(x: 100, y: 100, width: 100, height: 44);
        but.backgroundColor = UIColor.red
        self.view .addSubview(but)
        but .addTarget(self, action: #selector(btnClick2(btn:)), for: .touchUpInside)
    }
    
    @objc func btnClick2(btn:UIButton){
        let homevc = HomeViewController<HomeViewModel,HomeViewHolder>();
        self.navigationController?.pushViewController(homevc, animated: true)
    }
    
//    @objc func btnClick(btn:UIButton){
//        print(btn);
//        let workName = Bundle.main.infoDictionary?["CFBundleExecutable"] as! String
//        let className: String = "GCViewController"
//        let clsName: String = (workName as! String)+"."+(className as String)
//        let class_VC = NSClassFromString(clsName) as! GCViewController.Type
//        let vc = class_VC.init()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }

}

