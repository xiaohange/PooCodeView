Pod::Spec.new do |s|
s.name         = "PooCodeView"
s.version      = "1.0.1"
s.summary      = "Graphical verification code, local check graphics verification code, random verification code, graphic verification, text verification.🌄"
s.homepage     = "https://github.com/xiaohange/PooCodeView"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "韩俊强" => "532167805@qq.com" }
s.platform     = :ios, "7.0"
s.ios.deployment_target = "7.0"
s.source       = { :git => "https://github.com/xiaohange/PooCodeView.git", :tag => s.version.to_s }
s.source_files  = "PooCodeView/**/*.{h,m}"
s.public_header_files = "PooCodeView/**/*.h"
s.requires_arc = true
end
