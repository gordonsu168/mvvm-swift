//
//  GCViewController.swift
//  Mvvm
//
//  Created by huya on 2022/8/7.
//

import UIKit
import Foundation

class GCViewController<ViewModelType,ViewHolderType>: UIViewController,GCController {
    func bindViewToModel() {
        
    }
    
    func bindModelToView() {
        
    }
    
    func bindViewAndModel() {
        
    }
    
    func bindEvent() {
        
    }
    
    var viewModel: ViewModelType?
    var viewHolder: ViewHolderType?
    override func viewDidLoad() {
        super.viewDidLoad()
        initModel()
        
        (self.viewModel as! GCViewModel).onCreat();
        (self.viewHolder as! GCViewHolder).onCreat();
        
        self.bindViewToModel()
        self.bindModelToView()
        self.bindViewAndModel()
        self.bindEvent()
    }
    
    deinit {
        (self.viewModel as! GCViewModel).onDestory();

    }
    

    private func initModel() -> Void{
        let appName = getBundleName();
        var controllerType = String(describing: type(of: self))
        if let index1 = controllerType.firstIndex(of: "<") {
            controllerType = String(controllerType[..<index1])
        }
        let controllerClassName = controllerType.replacingOccurrences(of: "ViewController", with: "")
        let viewModelName: String = appName+"."+controllerClassName+"ViewModel"
        let viewModelCls = NSClassFromString(viewModelName) as! NSObject.Type
        let vm = viewModelCls.init() as? ViewModelType;
        self.viewModel = vm;
        
        let viewHolderName: String = appName+"."+controllerClassName+"ViewHolder"
        let viewHolderCls = NSClassFromString(viewHolderName) as! NSObject.Type
        viewHolder = viewHolderCls.init() as? ViewHolderType;
    }
    
    private func getBundleName() -> String{
        return Bundle.main.infoDictionary?["CFBundleExecutable"] as! String
    }
}
