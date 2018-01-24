This project demonstrates a bug in WKActionSheet (and/or helper classes) on iOS 11.  

Bug:
GIVEN a WKWebView is showing in a modal presentation,
WHEN the user long-presses a link
AND the user then dismisses the resulting WKActionSheet
THEN dismiss() is called twice on the view controller containing the WKWebView
AND the modally presented WKWebView is also dismissed.

To investigate, build and run the application on iOS 11, and follow the prompts in the app.  Thanks for your attention!

