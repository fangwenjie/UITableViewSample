//
//  ViewController.swift
//  UITableViewSample
//
//  Created by 方文杰 on 2020/12/6.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var listTableView: UITableView?
    let cell_identifer = "MsgList"
    var dataList: [MsgModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // 可以继承WMBaseTableViewCell 添加东西
        createTableView()
        initData()
    }

    // MARK: - 创建tableview

    func createTableView() {
        listTableView = UITableView()
        listTableView?.delegate = self
        listTableView?.dataSource = self
        view.addSubview(listTableView!)

        listTableView?.rowHeight = UITableView.automaticDimension
        listTableView?.estimatedRowHeight = 50
        listTableView?.register(TimeLineTableViewCell.self, forCellReuseIdentifier: cell_identifer)
        listTableView?.separatorStyle = UITableViewCell.SeparatorStyle.none

        listTableView?.snp.makeConstraints({ ConstraintMaker in
            ConstraintMaker.edges.equalToSuperview()
        })
    }

    // MARK: - tableview dataSourceDelegate

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TimeLineTableViewCell = tableView.dequeueReusableCell(withIdentifier: cell_identifer) as! TimeLineTableViewCell
        cell.setDataForViews(dataList[indexPath.row], indexPath.row == 0, indexPath.row == dataList.count - 1)

        return cell
    }

    // MARK: - tableview delegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("click item 点击了！。。。。。: ")
    }

    // MARK: -

    func initData() {
        dataList = [
            MsgModel("粉丝", "好好学中医 关注了你", MsgType.Type1),
            MsgModel("互动消息", "David 赞了你的评论", MsgType.Type2),
            MsgModel("xx小助手", "#一起甜蜜热舞", MsgType.Type1),
            MsgModel("系统通知", "xx直播", MsgType.Type4),
        ]
        listTableView?.reloadData()
    }
}
