//
//  nickNameCheck.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

// NicknameValidator.swift
import Foundation

struct NicknameValidator {
    var validationMessages: [String] = []
    
    mutating func validate(nickname: String) {
        // 유효성 검사 메시지 초기화
        validationMessages.removeAll()
        
        let trimmedNickname = nickname.trimmingCharacters(in: .whitespaces)
        
        // 각 조건을 체크하여 실패 시 메시지 추가
        if trimmedNickname.isEmpty {
            validationMessages.append("닉네임은 최소 1글자 이상 입력해야 합니다")
        }
        
        if trimmedNickname.count > 10 {
            validationMessages.append("닉네임은 최대 10글자까지 입력 가능합니다.")
        }
        
        if trimmedNickname.contains(" ") {
            validationMessages.append("닉네임 사이에는 공백을 입력할 수 없습니다.")
        }
        
        if isNicknameTaken(trimmedNickname) {
            validationMessages.append("다른 사용자와 중복되는 닉네임입니다.")
        }
    }
    
    // 이미 사용 중인 닉네임을 확인하는 함수 (예시)
    private func isNicknameTaken(_ nickname: String) -> Bool {
        let takenNicknames = ["example1", "example2"] // 실제 사용 중인 닉네임 배열
        return takenNicknames.contains(nickname)
    }
}
