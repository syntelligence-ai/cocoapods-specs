# Trust Platform iOS SDK 0.2.0.
# Written by the Release workflow in the SDK's source repository; not edited by hand.
Pod::Spec.new do |s|
  s.name         = "TrustPlatform"
  s.version      = "0.2.0"
  s.summary      = "Trust Platform iOS data SDK"
  s.description  = "iOS data layer for the Trust Platform SDK, distributed as a binary framework."
  s.homepage     = "https://syntelligence.ai"
  s.license      = { :type => "Proprietary", :text => <<-'LICENSE' }
This SDK Licence (the “Agreement”) is made between you (“You”) and Syntelligence
AI Ltd (“Syntelligence”), a company registered in England and Wales with company
number 16589177, whose registered office is at 55 Baker Street, London W1U 7EU.

By downloading, installing or using the software and any associated
documentation or other materials made available by Syntelligence to enable the
implementation or integration of the Syntelligence product with Your services
(collectively the “SDK”), You accept the terms of this Agreement and agree to be
bound by it. If You are using the SDK on behalf of an entity, You represent that
You have authority to bind that entity to this Agreement and by accepting this
Agreement, You are doing so on behalf of that entity and all references to “You”
in this Agreement refer to that entity.

If You do not agree with the terms of this Agreement, do not download, install
or otherwise use the SDK.

1. Scope of Licence

Subject to compliance with the terms of this Agreement, Syntelligence grants You
a non-exclusive, royalty-free, revocable, worldwide, non-transferable and
non-sublicensable licence for the term of this Agreement to use the SDK solely
to implement or integrate the Syntelligence product with or within Your mobile
network infrastructure and systems in accordance with any documentation or
instructions supplied by Syntelligence. Syntelligence reserves the right to
modify, update or discontinue the SDK or any part of it at any time and has no
obligation to provide maintenance, support, updates or error corrections.

2. Ownership

Except for the rights expressly granted under this Agreement, Syntelligence
retains all right, title and interest in and to the SDK, including all
intellectual property rights in the SDK, whether registered or not. Except as
necessary to identify Syntelligence as the provider of the relevant product, no
right or licence is granted to You to use any name, trade mark, service mark or
product name of Syntelligence. You may not remove, delete or modify any
copyright notices in the SDK. During the term of this Agreement, You may make
copies of the SDK as reasonably necessary for Your use of the SDK and for backup
and archival purposes.

All rights not expressly granted under this Agreement are reserved by
Syntelligence.

3. Prohibitions

You shall not: (a) alter, modify, adapt, decompile, reverse engineer,
disassemble, create derivative works of or otherwise use the SDK or any part of
it except as expressly permitted under this Agreement, expressly approved in
writing by Syntelligence or otherwise permitted by applicable law; (b) publish,
copy, sell, rent, lease, sub-lease, distribute or otherwise make available the
SDK or any part of it for use by a third party except as permitted by this
Agreement; or (c) use the SDK to circumvent any technical restriction or licence
condition, or to create, modify, or include any viruses or vulnerabilities
within a Syntelligence product or the SDK.

4. Limitation of Liability and Disclaimer of Warranties

The SDK is provided “as is” and “as available”. Use of the SDK is at Your sole
risk, and You assume the entire risk arising from the use of the SDK or any part
of it.

Except to the extent prohibited by law or set out in this Agreement,
Syntelligence excludes all warranties and terms of any kind, whether express or
implied (including relating to fitness for purpose, merchantable quality,
non-infringement of intellectual property rights, or that any access to the SDK
will be uninterrupted or error free).

The SDK may include open source software for which Syntelligence accepts no
responsibility or liability. Notwithstanding clause 1, such open source software
is licensed to You under the applicable open source licence by the relevant
licensor (not Syntelligence), and You must comply with those licence terms.

To the fullest extent permitted by law, Syntelligence shall not be liable under
or in connection with this Agreement (whether in contract, tort (including
negligence) or otherwise): (a) for any special, incidental, indirect or
consequential loss or damage, or for any loss of profit, revenue, business,
goodwill or data, whether direct or indirect; or (b) for more than one hundred
pounds Sterling (£100) on a total aggregate basis.

Nothing in this Agreement excludes or limits any liability to the extent that it
cannot be excluded or limited under applicable law.

5. Modification

Syntelligence will give You notice of any change to this Agreement before it
takes effect. If You do not agree with the change, You must cease using the SDK
before the change takes effect. Your continued use of the SDK after any change
takes effect will constitute Your acceptance of the amended Agreement.

6. Termination

The Agreement shall continue until terminated in accordance with this clause.

Syntelligence may terminate this Agreement immediately upon written notice
(including email) to You for convenience or for any breach by You of any term of
this Agreement (whether such breach is material, immaterial or repudiatory). You
may terminate this Agreement at any time by ceasing use of the SDK. Upon
termination, You must immediately cease all use of the SDK, and within 30 days
after termination, delete or destroy all copies of the SDK in Your possession or
control.

Clauses 2, 3, 4,6, 7, 8 and 10 will survive termination of this Agreement.

7. Governing Law and Jurisdiction

This Agreement shall be governed by and construed in accordance with the laws of
England and Wales. Any dispute or claim of any kind, which shall include
non-contractual disputes or claims and disputes or claims to subject matter or
formation, arising out of or in connection with this Agreement shall be subject
to the exclusive jurisdiction of the courts of England and Wales.

8. Entire Agreement

This Agreement constitutes the entire agreement between You and Syntelligence
and supersedes all previous communications, representations and understandings
between You and Syntelligence with respect to the SDK. Neither party has relied
on any representation in entering into this Agreement.

9. Assignment

You may not assign this Agreement or any rights granted under it, in whole or in
part, without Syntelligence’s prior written consent.

10. Severability

If any provision of this Agreement is held by a court of competent jurisdiction
to be illegal, invalid or unenforceable, the remaining provisions shall remain
in full force and effect.
  LICENSE
  s.author       = "Syntelligence"
  s.platforms    = { :ios => "15.1" }
  s.swift_version = "6.0"
  s.source       = { :http => "https://d34opintdyag1m.cloudfront.net/trust-platform/ios/0.2.0/TrustPlatform.xcframework.zip", :sha256 => "a75dc4a309419e998d9a2c635132645e0c27590b8bdd1866f280145b39881436" }

  s.vendored_frameworks = "TrustPlatform.xcframework"

  # The frameworks are built for arm64 simulators only; the consuming app target must also skip
  # x86_64 simulator slices.
  s.pod_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
  s.user_target_xcconfig = { "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "x86_64" }
end
