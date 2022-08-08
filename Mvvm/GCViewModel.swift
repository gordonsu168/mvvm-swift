//
//  GCViewModel.swift
//  Mvvm
//
//  Created by huya on 2022/8/7.
//

import Foundation

class GCViewModel: NSObject{
    func onCreat(){
        print("onCreat:\(Self.Type.self)")
        
    }
    func onDestory(){print("onDestory:\(Self.Type.self)")}
}
