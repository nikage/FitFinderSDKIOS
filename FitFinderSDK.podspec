Pod::Spec.new do |spec|
  spec.name         = 'FitFinderSDK'
  spec.version      = '1.0.0'
  spec.summary      = 'A framework for size recommendations based on height and weight.'
  spec.description  = 'FitFinderSDK provides a simple API for calculating and recommending clothing sizes based on body measurements.'
  spec.homepage     = 'https://github.com/nikage/FitFinderSDKIOS'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Mykola Mikhno' => 'email@example.com' }
  spec.source       = { :git => 'https://github.com/nikage/FitFinderSDKIOS.git', :tag => '1.0.0' }
  spec.ios.deployment_target = '13.0'
  spec.source_files = 'Sources/**/*.{swift}'
end

