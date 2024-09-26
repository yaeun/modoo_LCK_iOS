//
//  popup_oneBtn.swift
//  _modooLCK_iOS_
//
//  Created by 나예은 on 2024/09/27.
//

import SwiftUI

struct popup_oneBtn: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Alert 메세지") {
                self.showingAlert.toggle()
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Title"), message: Text("Message"),
                      dismissButton: .default(Text("Default")))
            }
    }
}

#Preview {
    popup_oneBtn()
}
