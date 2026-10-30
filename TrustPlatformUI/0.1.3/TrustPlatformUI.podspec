# Trust Platform iOS SDK 0.1.3.
# Written by the Release workflow in the SDK's source repository; not edited by hand.
Pod::Spec.new do |s|
  s.name         = "TrustPlatformUI"
  s.version      = "0.1.3"
  s.summary      = "Trust Platform iOS UI SDK"
  s.description  = "Ready-made SwiftUI screens for the Trust Platform SDK, distributed as a binary framework."
  s.homepage     = "https://syntelligence.ai"
  s.license      = { :type => "Proprietary", :text => "Copyright Syntelligence" }
  s.author       = "Syntelligence"
  s.platforms    = { :ios => "15.1" }
  s.swift_version = "6.0"
  s.source       = { :http => "https://d34opintdyag1m.cloudfront.net/trust-platform/ios/0.1.3/TrustPlatformUI.xcframework.zip", :sha256 => "2fd236402de952f407ed79cb9b959d8dbbed0d455da86d320b0ea8e945e4659d" }

  s.vendored_frameworks = "TrustPlatformUI.xcframework"
  s.dependency "TrustPlatform", "0.1.3"

  # The frameworks are built for arm64 simulators only; the consuming app target must also skip
  # x86_64 simulator slices.
  s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
  s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
end
