//
//  DemoListController.swift
//  WRCycleScrollViewDemo
//
//  Created by wangrui on 2017/4/19.
//  Copyright © 2017年 wangrui. All rights reserved.
//

import UIKit

class DemoListController: UIViewController
{
    lazy var tableView:UITableView = UITableView(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: self.view.bounds.height), style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        title = "无限图片轮播"
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - tableView delegate / dataSource
extension DemoListController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: nil)
        var str:String? = nil
        switch indexPath.row {
        case 0:
            str = "本地图片";
        case 1:
            str = "网络URL";
        case 2:
            str = "";
        case 3:
            str = "";
        case 4:
            str = "";
        default:
            str = ""
        }
        cell.textLabel?.text = str
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            navigationController?.pushViewController(LocalImgController(), animated: true)
        case 1:
            navigationController?.pushViewController(ServerImgController(), animated: true)
//        case 2:
//            navigationController?.pushViewController(ThirdViewController(), animated: true)
//        case 3:
//            navigationController?.pushViewController(FourthViewController(), animated: true)
//        case 4:
//            navigationController?.pushViewController(FifthViewController(), animated: true)
        default:
           break
        }
    }
}




