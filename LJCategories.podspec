Pod::Spec.new do |s|
    s.name         = 'LJCategories'
    s.version      = '0.0.1'
    s.summary      = 'A framework that encapsulates the common methods for developing iOS.'
    s.homepage     = 'https://github.com/LiuJinGH/LJCategories'
    s.license      = 'MIT'
    s.authors      = {'Lucky Liu' => 'liujincat@163.com'}
    s.platform     = :ios, '8.0'
    s.source       = {:git => 'https://github.com/LiuJinGH/LJCategories.git', :tag => s.version}
    s.source_files = 'LJCategories/**/*.{h,m}'
    s.public_header_files = 'LJCategories/**/*.{h}'
    s.requires_arc = true

s.frameworks = 'UIKit', 'CoreFoundation'

end
