//
//  GCViewHolder.swift
//  Mvvm
//
//  Created by huya on 2022/8/8.
//

import UIKit

class GCViewHolder: NSObject,GCLifeCycle {
    func onCreat()->Void {
        print("onCreat:\(Self.Type.self)")
    }
    
    func onDestory()->Void {
        print("onDestory:\(Self.Type.self)")
    }
    

}
