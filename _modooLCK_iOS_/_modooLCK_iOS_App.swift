//
//  _modooLCK_iOS_App.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/11.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth
@main
struct _modooLCK_iOS_App: App {
    
    init() {
        let kakaoAppKey = Bundle.main.infoDictionary?["KAKAO_NATIVE_APP_KEY"] ?? ""
        // Kakao SDK 초기화
        KakaoSDK.initSDK(appKey: kakaoAppKey as! String)
    }
    
    var body: some Scene {
        WindowGroup {
            LoginUI()
                .onOpenURL { url in
                                if (AuthApi.isKakaoTalkLoginUrl(url)) {
                                    _ = AuthController.handleOpenUrl(url: url)
                                }
                            }
        }
    }
}
