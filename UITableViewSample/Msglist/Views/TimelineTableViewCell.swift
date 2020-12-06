//
//  TimelineTableViewCell.swift
//  UITableViewSample
//
//  Created by 方文杰 on 2020/12/6.
//

import Foundation

import SnapKit
import UIKit

class TimeLineTableViewCell: UITableViewCell {
    lazy var avatarView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "ic_msg_fans")
        return view
    }()

    lazy var msgTitleView: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 16)
        view.textColor = .black
        return view
    }()

    lazy var msgContentView: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 14)
        view.textColor = .gray
        return view
    }()

    // MARK: -

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func initViews() {
        backgroundColor = UIColor.white
        contentView.backgroundColor = UIColor.white
        selectionStyle = .none
        // layout msg item
        // avatar
        contentView.addSubview(avatarView)

        // title
        msgTitleView.text = "粉丝"
        contentView.addSubview(msgTitleView)

        // content
        msgContentView.text = "消息内容"
        contentView.addSubview(msgContentView)
        
        contentView.snp.makeConstraints({maker in
            maker.edges.equalToSuperview()
            maker.height.equalTo(96)
        })

        avatarView.snp.makeConstraints({ maker in
            maker.left.equalToSuperview().offset(15)
            maker.centerY.equalToSuperview()
            maker.width.equalTo(48)
            maker.height.equalTo(48)
        })

        msgTitleView.snp.makeConstraints({ maker in
            maker.top.equalTo(avatarView.snp.top)
            maker.left.equalTo(avatarView.snp.right).offset(10)
            maker.right.equalToSuperview()
        })

        msgContentView.snp.makeConstraints({ ConstraintMaker in
            ConstraintMaker.top.equalTo(msgTitleView.snp.bottom).offset(5)
            ConstraintMaker.left.equalTo(self.avatarView.snp.right).offset(10)
            ConstraintMaker.right.equalToSuperview()
        })
    }

    // MARK: -

    func setDataForViews(_ model: MsgModelProtocol, _ isHideUplineView: Bool = false, _ isHideDownView: Bool = false) {
        msgTitleView.text = model.fwj_getTitle()
        msgContentView.text = model.fwj_getContent()

        updateUpAndDown(isHideUplineView, isHideDownView)
    }

    func updateUpAndDown(_ isHideUplineView: Bool = false, _ isHideDownView: Bool = false) {
//        setNeedsLayout()
//        layoutIfNeeded()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
