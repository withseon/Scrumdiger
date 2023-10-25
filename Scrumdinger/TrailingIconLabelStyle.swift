//
//  TrailingIconLabelStyle.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/29/23.
//

/**
 Label 스타일 사용자 정의
 프로토콜을 생성 후 재사용하여 일관된 디자인 적용
 */
import SwiftUI

protocol TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
    
}
