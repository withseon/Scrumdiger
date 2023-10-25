//
//  Theme.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/17/23.
//

// SwiftUI 프레임워크에서 색상 속성을 추가
// Swift는 색상을 뷰 인스턴스로 취급
import SwiftUI

enum Theme: String{ // 열거형 (연관된 값들의 집합을 공통된 타입으로 정의)
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color{
        switch self{    // 열거형은 switch-case문과 같이 쓰는 경우가 많음
            case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
            case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    var mainColor: Color{
        Color(rawValue) // rawValue: 원시값
    }
}
