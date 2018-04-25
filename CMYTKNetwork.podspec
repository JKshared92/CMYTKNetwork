#
# Be sure to run `pod lib lint CMYTKNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CMYTKNetwork'
  s.version          = '0.1.0'
  s.summary          = '基于YTKNetwork做的扩展，用QMUIKit用加载动画'

  s.homepage         = 'https://github.com/JKshared92/CMYTKNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'comma' => '506702341@qq.com' }
  s.source           = { :git => 'https://github.com/JKshared92/CMYTKNetwork.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'CMYTKNetwork/Classes/**/*'
  s.requires_arc = true
  s.frameworks   = 'UIKit','Foundation'
  s.dependency     'QMUIKit'
  s.dependency     'YTKNetwork'
end
