/**
 * Automatically generated by expo-modules-autolinking.
 *
 * This autogenerated class provides a list of classes of native Expo modules,
 * but only these that are written in Swift and use the new API for creating Expo modules.
 */

import ABI44_0_0ExpoModulesCore
import ABI44_0_0ExpoCellular
import ABI44_0_0EXClipboard
import ABI44_0_0ExpoHaptics
import ABI44_0_0ExpoLinearGradient
import ABI44_0_0ExpoLocalization
import ABI44_0_0EXScreenOrientation
import ABI44_0_0ExpoSystemUI
import ABI44_0_0EXTrackingTransparency
import ABI44_0_0EXUpdates

@objc(ABI44_0_0ExpoModulesProvider)
public class ExpoModulesProvider: ModulesProvider {
  public override func getModuleClasses() -> [AnyModule.Type] {
    return [
      CellularModule.self,
      ClipboardModule.self,
      HapticsModule.self,
      LinearGradientModule.self,
      LocalizationModule.self,
      ExpoSystemUIModule.self,
      TrackingTransparencyModule.self
    ]
  }

  public override func getAppDelegateSubscribers() -> [ExpoAppDelegateSubscriber.Type] {
    return [
      ScreenOrientationAppDelegate.self
    ]
  }

  public override func getReactDelegateHandlers() -> [ExpoReactDelegateHandlerTupleType] {
    return [
      (packageName: "expo-screen-orientation", handler: ScreenOrientationReactDelegateHandler.self),
      (packageName: "expo-updates", handler: ExpoUpdatesReactDelegateHandler.self)
    ]
  }
}
