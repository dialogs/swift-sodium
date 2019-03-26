Pod::Spec.new do |s|
s.name = 'DLGSodium'
s.version = '0.7.1'
s.license = { :type => "ISC", :file => 'LICENSE' }
s.summary = 'Swift-Sodium provides a safe and easy to use interface to perform common cryptographic operations on iOS and OSX.'
s.authors = { 'Frank Denis' => '' }
s.homepage = 'https://github.com/dialogs/swift-sodium'
s.source = { :git => 'https://github.com/dialogs/swift-sodium.git', :tag => "#{s.version}" }

s.ios.deployment_target = '8.0'
s.osx.deployment_target = '10.10'
s.watchos.deployment_target = '5.0'

s.ios.vendored_library    = 'Sodium/libsodium/libsodium-ios.a'
s.osx.vendored_library    = 'Sodium/libsodium/libsodium-osx.a'
s.watchos.vendored_library    = 'Sodium/libsodium/libsodium-watchos.a'

s.source_files = 'Sodium/**/*.{swift,h}'
s.private_header_files = 'Sodium/libsodium/*.h'

s.preserve_paths = 'Sodium/libsodium/module.modulemap'
s.pod_target_xcconfig = {
   'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Sodium/libsodium',
}

s.requires_arc = true
end
