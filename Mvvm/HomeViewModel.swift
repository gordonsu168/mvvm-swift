//
//  HomeViewModel.swift
//  Mvvm
//
//  Created by huya on 2022/8/7.
//

import UIKit

class HomeViewModel: GCViewModel {
    
    var name: String?
    var age: Int = 0 
    
    override func onCreat() {
        super.onCreat()
        self.name = "1111"
    }
    
    override func onDestory() {
        super.onDestory()
    }
}
