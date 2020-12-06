//
//  MsgTimelineModel.swift
//  UITableViewSample
//
//  Created by 方文杰 on 2020/12/6.
//

import Foundation

class MsgTimelineModel:NSObject,MsgTimelineModelProtocol{
    
    var timeStr :String?
    var contentStr:String?
    
    
    convenience init(_ content:String = "",_ time:String = ""){
        self.init()
        self.contentStr = content
        self.timeStr = time
    }
    
    func fwj_getContentStr() -> String {
        return contentStr ?? ""
    }
    
    func fwj_getTimeStr() -> String {
        return timeStr ?? ""
    }
    
}
