//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by joe_mac on 09/28/2017.
//  Copyright © 2017 joe_mac. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    // 콘텐츠 데이터를 저장하는 변수
    var param: MemoData?
    @IBOutlet var subject: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ➀ 제목과 내용, 이미지를 출력
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        // ➁ 날짜 포맷 변환
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm 분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        
        // ➂ 내비게이션 타이틀에 날짜를 표시
        self.navigationItem.title = dateString
    }
}
