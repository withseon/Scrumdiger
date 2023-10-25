//
//  CardView.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/18/23.
//
/**
 CardView
 DailyScrum 모델 데이터 요약. 제목, 참가자수 표시하는 뷰
 CardView_Preview 구조를 업데이트하여 즉각적으로 시각적 피드백을 받을 수 있음
 */

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.IengthInMinutes)", systemImage: "clock")
                    .padding(.trailing, 20)
            }
            .font(.caption)
            
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)   // foregroundColor가 foregroundStyle로 rename됨
    }
}


struct CardView_Previews: PreviewProvider{
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View{
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
