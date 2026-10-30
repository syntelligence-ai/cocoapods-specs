# Trust Platform iOS SDK 0.1.4.
# Written by the Release workflow in the SDK's source repository; not edited by hand.
Pod::Spec.new do |s|
  s.name         = "TrustPlatformUI"
  s.version      = "0.1.4"
  s.summary      = "Trust Platform iOS UI SDK"
  s.description  = "Ready-made SwiftUI screens for the Trust Platform SDK, distributed as a binary framework."
  s.homepage     = "https://syntelligence.ai"
  s.license      = { :type => "Proprietary", :text => "Copyright Syntelligence" }
  s.author       = "Syntelligence"
  s.platforms    = { :ios => "15.1" }
  s.swift_version = "6.0"
  s.source       = { :http => "https://d34opintdyag1m.cloudfront.net/trust-platform/ios/0.1.4/TrustPlatformUI.xcframework.zip", :sha256 => "81e807948a06f7da35775870b032bc1b450efec29a7cf1043283dc8f49ac88ee" }

  s.vendored_frameworks = "TrustPlatformUI.xcframework"
  s.dependency "TrustPlatform", "0.1.4"

  # The frameworks are built for arm64 simulators only; the consuming app target must also skip
  # x86_64 simulator slices.
  s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
  s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
end
