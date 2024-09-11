//
//  KakaoAuthVM.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/12.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM : ObservableObject{
    
    func handleKakaoLogin() {
        //카카오톡 설치 여부 확인 ( 설치 완 )
        if (UserApi.isKakaoTalkLoginAvailable()) {
            //앱을 통해 로그인
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
            //카카오톡 설치 여부 확인 ( 미 설치 ( 웹뷰 ))
        } else {
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
        }
    }
    
}
