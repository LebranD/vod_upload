#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint vod_upload_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'vod_upload_flutter'
  s.version          = '1.4.0'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.static_framework = true
  s.dependency 'QCloudCOSXML/Slim','6.4.4'
  s.dependency 'QCloudQuic','6.3.9'
  s.dependency 'AFNetworking','4.0.1'
  s.platform = :ios, '9.0'
  s.resource_bundles = {'vod_uploader_privacy' => ['PrivacyInfo.xcprivacy']}

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
