import Combine
import SwiftUI

class PermitViewModel: ObservableObject {

    @Published var allPermit: Bool = false
    @Published var fourteenPermit: Bool = false
    @Published var termsOfServicePermit: Bool = false

    private var allSelected = false
    private var store: [AnyCancellable] = []

    init() {
        $allPermit
            .sink { [weak self] newValue in
                guard let self = self else { return }

                if newValue && !allSelected {
                    allSelected = true
                    self.fourteenPermit = true
                    self.termsOfServicePermit = true
                } else if !newValue && allSelected { // 전체 동의가 체크되어 있는데 끈 경우
                    allSelected = false
                    self.fourteenPermit = false
                    self.termsOfServicePermit = false
                }
            }
            .store(in: &store)

        Publishers.CombineLatest($fourteenPermit, $termsOfServicePermit)
            .sink { [weak self] fourteen, terms in
                guard let self = self else { return }

                if allSelected { // 모두 선택되었을 때,
                    if self.allPermit {
                        allSelected = false
                        self.allPermit = false
                    }
                } else {
                    if fourteen && terms  {
                        self.allPermit = true
                    }
                }
            }
            .store(in: &store)
    }
}
