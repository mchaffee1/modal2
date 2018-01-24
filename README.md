This project demonstrates a bug in WKActionSheet (and/or helper classes) on iOS 11.  

*Bug:*  
GIVEN a WKWebView is showing in a modal presentation,  
WHEN the user long-presses a link  
AND the user then dismisses the resulting WKActionSheet  
THEN dismiss() is called twice on the view controller containing the WKWebView  
AND the modally presented WKWebView is also dismissed.  

*Expected behavior:*  
Dismissing the WKActionSheet should only call dismiss() once on the view controller; the WKActionSheet should be dismissed,
and the WKWebView should not be dismissed.  This is the behavior in iOS 10.3 and earlier.

To investigate, build and run the application on iOS 11, and follow the prompts in the app.  

In the same folder as this README is also a file, "demo.mov" which is a recording of this project running.

Thanks for your attention!
