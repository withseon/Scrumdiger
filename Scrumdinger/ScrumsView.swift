//
//  ScrumsView.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/30/23.
//

/**
 List View을 이용
 카드뷰(일별 스크럼에 대한 요약)를 목록으로 만들어 볼 수 있게 함
 
 DailyScrum를 identifible 데이터로 만들어서 List에서 동적으로 뷰를 생성하게 함
 그런데, title를 키로 identify하려고 했으나, 유저가 같은 title을 작성할 수 있는 경우를 대비하여
 DailyScrum의 프로퍼티 id를 UUID()로 생성해줌
 */

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums, id: \.title){ scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(scrums: DailyScrum.sampleData)
}
