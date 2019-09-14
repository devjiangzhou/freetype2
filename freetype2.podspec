#
# Be sure to run `pod lib lint freetype2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'freetype2'
  s.version          = '2.10.1.4'
  s.summary          = 'iOS freetype library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  iOS freetype library
                       DESC

  s.homepage         = 'https://github.com/devjiangzhou/freetype2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiangzhoubai@gmail.com' => 'jiangzhou' }
  s.source           = { :git => 'https://github.com/devjiangzhou/freetype2.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'

  s.static_framework = true
  
  s.source_files = 'freetype2/Classes/*.h'

  s.subspec 'freetype' do |ss|
    ss.header_dir   = 'freetype'
    ss.source_files = 'freetype2/Classes/freetype/*.h'

    ss.subspec 'config' do |sss|
      sss.source_files = 'freetype2/Classes/freetype/config/*.h'
      sss.header_dir = 'config'
    end
  end

  s.xcconfig = { "HEADER_SEARCH_PATHS" => "freetype2/Classes/**" }
  
  s.vendored_library = 'freetype2/libfreetype.a'

  s.libraries = "z"
end
