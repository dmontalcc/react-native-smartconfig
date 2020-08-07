require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = 'RNSmartConfig'
  s.version          = package['version']
  s.summary          = package['description']
  s.license          = package['license']
  s.authors          = package['author']
  s.homepage         = "https://www.npmjs.com/package/react-native-smartconfig-dm"
  s.platforms        = { :ios => "9.0", :tvos => "9.2" }
  s.source           = { :git => 'https://www.npmjs.com/package/react-native-smartconfig-dm', :tag => "v#{s.version}" }
  s.source_files     = 'ios/**/*.{h,m}'
  s.requires_arc     = true
  s.dependency         'React'
end