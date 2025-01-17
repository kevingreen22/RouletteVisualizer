//
//  WebView.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 1/16/25.
//

import SwiftUI
import WebKit

struct WebKitView: UIViewRepresentable {
    var url: URL?
    
    private let webView: WKWebView
    private var isLocal: Bool = false
    
    init(url: URL) {
        self.url = url
        self.isLocal = false
        webView = WKWebView(frame: .zero)
    }
    
    init(localResource resource: String, withExtension ext: String = "html") {
        let url = Bundle.main.url(forResource: resource, withExtension: ext)
        self.url = url
        self.isLocal = true
        webView = WKWebView(frame: .zero)
    }
    
    
    func makeUIView(context: Context) -> WKWebView {
        webView.allowsBackForwardNavigationGestures = true
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url {
            if isLocal {
                webView.loadFileURL(url, allowingReadAccessTo: url.deletingLastPathComponent())
            } else {
                webView.load(URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 7))
            }
        } else {
            print("\(type(of: self)).\(#function)_badURL")
        }
    }
}



#Preview {
    WebKitView(url: URL(string: "https://google.com")!)
        .ignoresSafeArea()
}


