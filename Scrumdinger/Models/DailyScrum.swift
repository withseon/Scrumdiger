//
//  DailyScrum.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/18/23.
//

import Foundation


// 데일리 스크럼 데이터 샘플 생성
// 데이터를 가져다 쓰기 위해 구조체로 생성
struct DailyScrum: Identifiable{    // Identifiable 프로토콜을 채택하여, 식별자로 사용되는 ID 프로퍼티 생성
    let id: UUID()
    var title: String
    var attendees: [String]
    var IengthInMinutes: Int
    var theme: Theme
    
}

extension DailyScrum{
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", 
                   attendees: ["cathy", "Daisy", "Simon", "Jonathan"],
                   IengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev", 
                   attendees: ["katie", "Grey", "Euna", "Luis", "Darla"],
                   IengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   IengthInMinutes: 5,
                   theme: .poppy)
    ]
}
