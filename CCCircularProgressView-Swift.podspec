#
# Be sure to run `pod lib lint CCCircularProgressView-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCCircularProgressView-Swift'
  s.version          = '0.1.0'
  s.summary          = 'Circular progress view written in Swift.'

  s.description      = <<-DESC
CCCircularProgressView-Swift is a circular progress view written in Swift, because controls like this always come in handy.
                       DESC

  s.homepage         = 'https://github.com/hsuanchih/CCCircularProgressView-Swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Hsuan-Chih Chuang' => 'hsuanchih.chuang@gmail.com' }
  s.source           = { :git => 'https://github.com/hsuanchih/CCCircularProgressView-Swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'CCCircularProgressView-Swift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CCCircularProgressView-Swift' => ['CCCircularProgressView-Swift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.swift_version = '4.0'
end
