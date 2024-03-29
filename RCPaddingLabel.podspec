#
#  Be sure to run `pod spec lint RCPaddingLabel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "RCPaddingLabel"
  s.version      = "0.0.1"
  s.summary      = "Label with padding, support autolayout"
  s.description  = "Label with padding, support autolayout. When used in autolayout, if text or attributeText of the label is null, the height of the label will be 0,"
  s.homepage     = "https://github.com/whyefa/RCPaddingLabel"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "broken" => "whyefa@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/whyefa/RCPaddingLabel.git", :tag => "#{s.version}" }
  s.source_files  = "RCPaddingLabel/*.{h,m}"
  
end
