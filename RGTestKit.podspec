Pod::Spec.new do |s|
  s.name         = "RGTestKit"
  s.version      = "0.0.3"
  s.summary      = "Miscellaneous test helpers."
  s.homepage     = "https://github.com/rhgills/rgtestkit"
  s.license      = 'MIT'
  s.author       = { "Robert Gilliam" => "robert@robertgilliam.org" }
  s.source       = { :git => "git@github.com:rhgills/RGTestKit.git", :tag => s.version.to_s }
  s.platform = :ios, '5.0'

  s.source_files = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.header_mappings_dir = 'Classes'

  s.requires_arc = true

  s.dependency 'RHGKit', '~> 0.1.2'
  s.dependency 'OCHamcrest', '~> 2.0.0'
  s.dependency 'LRMocky', '~> 0.9.1x'
  s.dependency 'CocoaLumberjack', '~> 1.6.0'
end
