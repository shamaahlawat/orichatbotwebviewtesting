import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = URL(string: "https://www.google.com")
//        webview.load(URLRequest(url: url!))
        
        //if we are having html page then
        //        let webView1 = UIWebView()
        //        webView1.loadHTMLString("<html><body><p>Hello!</p></body></html>", baseURL: nil)
        //        let webView2 = WKWebView()
        //        webView2.loadHTMLString("<html><body><p>Hello!</p></body></html>", baseURL: nil)
        
        //        let url = URL(string: "webView2")
        
        //        OR
        
        //        let url = URL(string: "http://www.google.com")
        //        let request = URLRequest(url : url!)
        //        webview.load(request)
        
        
        // OR
        //        NSURL url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"www"]];
        //        [webview loadRequest:[NSURLRequest requestWithURL:url]];
        
        // OR
        //        let path = Bundle.main.path(forResource: "dados", ofType: "html", inDirectory: "root") {
        //            webView.load( URLRequest(url: URL(fileURLWithPath: path)) )
        //  }
        
//        OR
//        let preferences = WKPreferences()
//        preferences.javaScriptEnabled = true
//        let configuration = WKWebViewConfiguration()
//        configuration.preferences = preferences
//        webview = WKWebView(frame: view.bounds, configuration: configuration)
//        view.addSubview(webview)
        
//        OR
//        let contentController = WKUserContentController()
//        let scriptSource = "document.body.style.backgroundColor = `red`;"
//        let script = WKUserScript(source: scriptSource, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
//        contentController.addUserScript(script)
//
//        let config = WKWebViewConfiguration()
//        config.userContentController = contentController
//
//        let webView = WKWebView(frame: .zero, configuration: config)

        
        let htmlpath = Bundle.main.path(forResource: "index", ofType: "html")
        let url = URL(fileURLWithPath : htmlpath!)
        let request = URLRequest(url: url)
        webview.load(request)
        
        
//        OR working but only dishtv chatboard is visible
        
//        let url = URL(string: "https://www.google.com")
//        webview.load(URLRequest(url: url!))
        
//        OR
//
//        let url = URL(string: "https://www.dishtv.in/")
//        webview.load(URLRequest(url: url!))
    }
    
    //    WHY THIS CANT'T BE USE HERE REACSON - ERROR EXPECTED DECLARATION ERROR
    //    let url = URL(string: "http://www.google.com")!
    //    webview.load(URLRequest(url: url!))
    
}



