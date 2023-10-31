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
    let scrum: DailyScrum   // DailyScrum 타입 상수 scrum 선언
    
    var body: some View {
        VStack(alignment: .leading){    // Text 시작점 정렬
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)  // 스크럼 제목을 읽고 "헤딩"을 따라 뷰의 정보 아키텍처를 전달하는데 도움이 됨
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")   //  어떤 Label인지 설명 "N attendees" (Label)
                Spacer()
                Label("\(scrum.IengthInMinutes)", systemImage: "clock")
                    .accessibilityLabel("\(scrum.IengthInMinutes) minute meeting")  //  어떤 Label인지 설명 "M minute meeting" (Label)

                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
            
        }
        .padding()
        .foregroundStyle(scrum.theme.accentColor)   // foregroundColor가 foregroundStyle로 rename됨
    }
}


struct CardView_Previews: PreviewProvider{
    // DailyScrum 샘플 데이터 중 첫번째 dailyscrum. dailyscrum은 구조체
    // DailyScrum 타입 정적 변수 scrum을 생성한 후, CardView의 초기값으로 넣어줌
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View{
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))  // 미리보기 뷰 크기 지정
    }
}
