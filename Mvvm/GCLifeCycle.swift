//
//  GCLifeCycle.swift
//  Mvvm
//
//  Created by huya on 2022/8/8.
//


protocol GCLifeCycle{
    func onCreat()
    func onDestory()
}

protocol GCController {
    func bindViewToModel()
    func bindModelToView()
    func bindViewAndModel()
    func bindEvent()
}
