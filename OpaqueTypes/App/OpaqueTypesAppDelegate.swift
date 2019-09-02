import UIKit

@UIApplicationMain
class OpaqueTypesAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        drawShapes()

        return true
    }

}
