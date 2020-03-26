
Pod::Spec.new do |s|
  s.name         = "RNDynamicAppIcon"
  s.version      = "1.0.0"
  s.summary      = "RNDynamicAppIcon"
  s.description  = <<-DESC
                  RNDynamicAppIcon
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  s.author             = { "author" => "tobi@devloft.de" }
  s.platform     = :ios, "10.3"
  s.source       = { :git => "https://github.com/TobiRes/react-native-altering-app-icon", :tag => "master" }
  s.source_files  = "RNDynamicAppIcon/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

