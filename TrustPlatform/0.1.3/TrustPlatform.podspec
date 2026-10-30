# Trust Platform iOS SDK 0.1.3.
# Written by the Release workflow in the SDK's source repository; not edited by hand.
Pod::Spec.new do |s|
  s.name         = "TrustPlatform"
  s.version      = "0.1.3"
  s.summary      = "Trust Platform iOS data SDK"
  s.description  = "iOS data layer for the Trust Platform SDK, distributed as a binary framework."
  s.homepage     = "https://syntelligence.ai"
  s.license      = { :type => "Proprietary", :text => "Copyright Syntelligence" }
  s.author       = "Syntelligence"
  s.platforms    = { :ios => "15.1" }
  s.swift_version = "6.0"
  s.source       = { :http => "https://d34opintdyag1m.cloudfront.net/trust-platform/ios/0.1.3/TrustPlatform.xcframework.zip", :sha256 => "1ecd5cb8be5eb1aca00ed3e22769251ce09b02e1287bce9924c90ec714793e8d" }

  s.vendored_frameworks = "TrustPlatform.xcframework"

  # The frameworks are built for arm64 simulators only; the consuming app target must also skip
  # x86_64 simulator slices.
  s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
  s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
end
