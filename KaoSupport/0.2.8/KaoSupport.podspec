Pod::Spec.new do |s|
  s.name             = 'KaoSupport'
  s.version          = '0.2.8'
  s.summary          = 'Kaodim Support library'
 
  s.description      = <<-DESC
  KaoSearchLoc provide Google places autocomplete controller
  DESC
 
  s.homepage         = 'https://github.com/kaodim/kaoSupport'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Augustius' => 'tech+ios@kaodim.com' }
  s.source           = { :git => 'git@github.com:kaodim/kaoSupport.git', :tag => s.version.to_s }

  s.source_files = 'Sources/**/*.{swift}'
  s.resource_bundles = {
      'KaoSupportPod' => [
        'Sources/**/*.xib',
        'Sources/Resources/icons.xcassets',
        'Sources/Resources/Languages/**/*.plist'
      ]
  }

  s.static_framework = true
  s.dependency 'ZDCChat', '1.4.0'
  s.dependency 'kaoNetwork', '~> 0.2.1'

  s.swift_version = '4.0'
  s.pod_target_xcconfig = {
     "SWIFT_VERSION" => "4.0",
  }
  s.ios.deployment_target = '10.0'
  s.requires_arc = true

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/**/*.{swift}'
    test_spec.dependency 'Quick'
    test_spec.dependency 'Nimble'
  end
 
end
