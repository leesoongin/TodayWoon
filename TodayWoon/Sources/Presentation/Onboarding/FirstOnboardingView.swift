//
//  FirstOnboardingView.swift
//  TodayWoon
//
//  Created by 이승진 on 2024/06/02.
//

import UIKit
import SnapKit
import Then

class FirstOnboardingView: BaseView {
    private let mainLabel = UILabel().then {
        $0.text = "오늘 나의 산책\n기록하고 공유하기"
        $0.textColor = .black100
        $0.numberOfLines = 2
        $0.font = TodayWoonFontFamily.Pretendard.semiBold.font(size: 30)
    }
    
    private(set) var nextButton = UIButton().then {
        $0.setTitle("다음", for: .normal)
        $0.titleLabel?.font = TodayWoonFontFamily.Pretendard.semiBold.font(size: 16)
        $0.backgroundColor = .primary
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 8
    }
    
    override func setupSubviews() {
        [mainLabel, nextButton].forEach {
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        mainLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(100)
        }
        nextButton.snp.makeConstraints {
            $0.height.equalTo(56)
            $0.bottom.equalToSuperview().offset(-30)
            $0.horizontalEdges.equalToSuperview().inset(16)
        }
        
    }
}
