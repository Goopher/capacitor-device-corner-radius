import Foundation

@objc public class DeviceCornerRadius: NSObject {

    @objc func getCornerRadius() -> Float {
        return Float(UIScreen.main.displayCornerRadius)
    }
}
