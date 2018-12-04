#
# Be sure to run `pod lib lint DWScreenKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DWScreenKit'
  s.version          = '1.0.0'
  s.summary          = 'DWScreenKit 屏幕适配相关方法组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.name             = "DWScreenKit"
  s.homepage         = 'https://github.com/WuDevin/DWScreenKit.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DevinWu' => '839281040@qq.com' }
  s.source           = { :git => 'https://github.com/WuDevin/DWScreenKit.git', :tag =>"1.0.0" }

  s.ios.deployment_target = '8.0'

  s.source_files = 'DWScreenKit/Classes/**/*'
  s.requires_arc = true
  # s.resource_bundles = {
  #   'DWScreenKit' => ['DWScreenKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
