
Pod::Spec.new do |s|
  s.name         = "RNDynamicIcons"
  s.version      = "1.0.0"
  s.summary      = "RNDynamicIcons"
  s.description  = <<-DESC
                  RNDynamicIcons
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "lars@idearockers.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/idearockers/react-native-dynamic-app-icon.git", :tag => "master" }
  s.source_files  = "RNDynamicIcons/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

