parseSpike
==========

##Introduction

An example of two different ways to abstract out Parse calls (in a class called ParseApi).  In both cases, we use the thread blocking call for fetching objects from parse.

In one of the parseApi methods (`fetchActivityTypesUsingDelegate:`), we use GCD and call notify the delegate (activityManager) on the main thread when the results on returned.  When the delegate receives the results, it updates a public property `someActivities`.  Meanwhile, the VC is using ReactiveCocoa's RACObserve to look for changes in someActivities.  When received, the UI updates.  This approach is an example of confining ReactiveCocoa to just one class (the VC).

The second method in parseApi (`fetchActivityTypes`) again calls Parse using a thread-blocking call and returns the results as an Array.  The ActivityManager method (`fetchActivityTypes`) that calls this method does so in a GCD queue and returns the results as a RACSignal to the VC that invoked the `fetchActivityTypes` method.  When the VC subscribes to the signal and the data is returned via that signal, the UI is updated.

In both cases, the main thread is not blocked by the Parse call.  So why not just use a callback or fetch in background call with Parse?  Well, we are experimenting with making it more testable.


##Getting Started

The project requires CocoaPods to install a few dependencies (Reactive Cocoa, Facebook, OCMock).  So, be sure to run `pod install` from the commandline within the root folder of the project. 
