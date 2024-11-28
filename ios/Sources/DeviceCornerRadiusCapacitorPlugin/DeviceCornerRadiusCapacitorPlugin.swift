import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(DeviceCornerRadiusPlugin)
public class DeviceCornerRadiusPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "DeviceCornerRadiusPlugin"
    public let jsName = "DeviceCornerRadius"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getCornerRadius", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = DeviceCornerRadius()
    
    @objc func getCornerRadius(_ call: CAPPluginCall) {
        let cornerRadius = implementation.getCornerRadius()
        return call.resolve([
            "topLeft": cornerRadius,
            "topRight": cornerRadius,
            "bottomLeft": cornerRadius,
            "bottomRight": cornerRadius
        ])
    }
}

/// Credits: @kylebshr/ScreenCorners (https://github.com/kylebshr/ScreenCorners)
/// This code snippet has been taken from the above repository without any modifications.
extension UIScreen {
    private static let cornerRadiusKey: String = {
        let components = ["Radius", "Corner", "display", "_"]
        return components.reversed().joined()
    } ()
    
    public var displayCornerRadius: CGFloat {
        guard let cornerRadius = self.value(forKey: Self.cornerRadiusKey) as? CGFloat else {
            assertionFailure("Failed to detect screen corner radius")
            return 0
        }
        return cornerRadius
    }
}
