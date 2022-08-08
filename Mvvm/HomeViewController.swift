//
//  HomeViewController.swift
//  Mvvm
//
//  Created by huya on 2022/8/7.
//

import UIKit

class HomeViewController<HomeViewModel,HomeViewHolder>: GCViewController<HomeViewModel,HomeViewHolder> {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func bindEvent() {
        let vm = self.viewModel!;
        
        print("bindEvent \(vm)")
    }

}
