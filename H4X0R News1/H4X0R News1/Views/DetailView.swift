//
//  DeatailsView.swift
//  H4X0R News1
//
//  Created by Ashmit Goel on 23/06/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://google.com")
}

