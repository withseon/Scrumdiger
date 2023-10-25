//
//  ContentView.swift
//  Scrumdiger
//
//  Created by 정인선 on 10/16/23.
//

import SwiftUI

//
struct Meeting_Previews: View {
    var body: some View {
        VStack{
            ProgressView(value: 5, total: 15)   // value: 진행 정도(default = 0), total: 범위(default = 1)
            HStack{
                VStack(alignment: .leading){    // Vstack 내부 요소 왼쪽 정렬
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.filled")   // Label(title, icon) 기본으로 icon이 왼쪽, title이 오른쪽
                }
                Spacer()    // Spacer() 사용으로 Hstack 내 Vstack 사이 공간 띄워주기
                VStack(alignment: .trailing){   // Vstack 내부 요소 오른쪽 정렬
                    Text("Seconds Remining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.filled")
                }
            }
            // Accessibility Modifiers
            .accessibilityElement(children: .ignore)    // 컨테이너에 있는 접근성 요소 배열 반환. (.ingore: 모든 하위 접근성 요소 무시).
            .accessibilityLabel("Time remaining")   // 아이콘과 같이 텍스트를 표시하지 않는 보기에 대한 접근성 레이블을 제공 (ex. button에 "Play Button"이 아닌 "Play"라고 지정해야 함)
            .accessibilityValue("10 minutes")   // 현재 뷰가 나타내는 값에 대한 설명 추가 (ex. Label을 "Volume"으로 지정하였다면, Value는 "60%"라고 지정)
            
            Circle()
                .strokeBorder(lineWidth: 24)    // 내부 선 두께 조절
            
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}){
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }.padding()
    }
}

#Preview {
    Meeting_Previews()
}
