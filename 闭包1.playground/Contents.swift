////: Playground - noun: a place where people can play
//
import UIKit
import XCPlayground

let showView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))

showView.addSubview(rectangle)
rectangle.center = showView.center
rectangle.backgroundColor = UIColor.redColor()

//weak var weakShowView = showView
UIView.animateWithDuration(2.0) { [weak showView] in
    if let showView = showView {
        rectangle.backgroundColor = UIColor.blueColor()
        rectangle.frame = showView.frame
    }
}

XCPlaygroundPage.currentPage.liveView = showView


