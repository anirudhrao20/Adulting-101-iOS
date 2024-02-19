//
//  CloseButton.swift
//  Adulting 101 iOS
//
//  Created by Anirudh Rao on 2/18/24.
//

import SwiftUI

struct CloseButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .font(.system(size: 17, weight: .bold))
            .foregroundColor(.secondary)
            .padding(8)
            .background(.ultraThinMaterial, in: Circle())
            .backgroundStyle(cornerRadius: 18)
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
