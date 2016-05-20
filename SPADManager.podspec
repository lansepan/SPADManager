Pod::Spec.new do |s|
s.name     = 'SPADManager'
s.version  = '1.0.0'
s.summary  = '广告管理.'
s.license = { :type => 'MIT', :file => 'LICENSE' }
s.homepage = 'https://github.com/lansepan/SPADManager'
s.author = { "BluePan" => "243492212@qq.com" }
s.source = { :git => "https://github.com/lansepan/SPADManager.git", :tag => s.version.to_s }
s.platform = :ios, "8.0"
s.requires_arc = true
s.framework = 'UIKit','MapKit','Security','Foundation','CoreLocation'
s.dependency 'Firebase'
s.dependency 'Firebase/AdMob'

s.public_header_files = 'SPADManagerExample/SPADManager/SPADManager.h'
s.source_files = 'SPADManagerExample/SPADManager/SPADManager.h'

s.subspec 'SPAdMob' do |ss|
ss.source_files = 'SPADManagerExample/SPADManager/AdMob/*.{h,m}'
end

s.subspec 'SPDomMob' do |ss|
ss.source_files = 'SPADManagerExample/SPADManager/DomMob/*.{h,m}'
end

end