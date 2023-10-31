//
//  TrailingIconLabelStyle.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/29/23.
//

/**
 Label 스타일 사용자 정의 ( icon을 오른쪽으로, text를 왼쪽으로 만들 예정)
 프로토콜을 생성 후 재사용하여 일관된 디자인 적용
 */
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle { // LabelStyle 프로토콜 채택
    func makeBody(configuration: Configuration) -> some View {  // makeBody 프로퍼티 구현
        // HStack를 사용하여 요소 재정렬 (title-icon 순서)
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

/**
 코드를 더 쉽게 사용하기 위해서
 trailingIcon 이라는 정적 속성을 만드는 확장자
 이로써 labelStyle(TrailingIconLabelStyle())이 아닌 labelStyle(.trailingIcon)으로 사용할 수 있음
 */
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
    
}
