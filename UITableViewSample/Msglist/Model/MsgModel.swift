// p
//  MsgTimelineModel.swift
//  UITableViewSample
//
//  Created by 方文杰 on 2020/12/6.
//

import Foundation

enum MsgType {
    case Type1
    case Type2
    case Type3
    case Type4
}

protocol MsgModelProtocol {
    func fwj_getTitle() -> String
    func fwj_getContent() -> String
    func fwj_getMsgType() -> MsgType
}

class MsgModel: NSObject, MsgModelProtocol {
    var title: String?
    var content: String?
    var msgType: MsgType = MsgType.Type1

    convenience init(_ title: String = "", _ content: String = "", _ type: MsgType = MsgType.Type1) {
        self.init()
        msgType = type
        self.title = title
        self.content = content
    }

    func fwj_getTitle() -> String {
        return title ?? ""
    }

    func fwj_getContent() -> String {
        return content ?? ""
    }
    
    func fwj_getMsgType() -> MsgType{
        return msgType
    }

}
