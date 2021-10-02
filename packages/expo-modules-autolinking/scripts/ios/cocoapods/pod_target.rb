# Overrides CocoaPods `PodTarget` class to make the `ReactCommon` pod define a module
# and tell CocoaPods to generate a modulemap for it. This is needed for Swift/JSI integration
# until the upstream podspec add `DEFINES_MODULE => YES` to build settings.
# See: https://github.com/CocoaPods/CocoaPods/blob/master/lib/cocoapods/target/pod_target.rb

module Pod
  class PodTarget

    private

    _original_defines_module = instance_method(:defines_module?)

    public

    # @return [Boolean] Whether the target defines a "module"
    #         (and thus will need a module map and umbrella header).
    #
    # @note   Static library targets can temporarily opt in to this behavior by setting
    #         `DEFINES_MODULE = YES` in their specification's `pod_target_xcconfig`.
    #
    define_method(:defines_module?) do
      # Make ReactCommon targets define a module
      return @defines_module = true if name.include?('ReactCommon')

      # Call the original method
      return _original_defines_module.bind(self).()
    end
  end
end
