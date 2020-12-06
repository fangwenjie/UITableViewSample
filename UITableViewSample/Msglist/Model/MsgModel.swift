//
//  MsgTimelineModel.swift
//  UITableViewSample
//
//  Created by 方文杰 on 2020/12/6.
//

import Foundation

class MsgModel: NSObject, MsgModelProtocol {
    var title: String?
    var content: String?

    convenience init(_ title: String = "", _ content: String = "") {
        self.init()

        self.title = title
        self.content = content
    }

    func fwj_getTitle() -> String {
        return title ?? ""
    }

    func fwj_getContent() -> String {
        return content ?? ""
    }
}
