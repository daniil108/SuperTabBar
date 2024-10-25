Pod::Spec.new do |s|
  s.name                    = 'SuperTabBar'
  s.version                 = '1.1.0'
  s.summary                 = 'Alternative custom TabView component'
  s.authors                 = { 'Daniil Sentsov' => 'daniil_sencov@mail.ru' }
  s.homepage                = 'https://github.com/daniil108/SuperTabBar'
  s.license                 = { :type => "MIT", :file => "LICENSE" }
  s.source                  = { :git => 'https://github.com/daniil108/SuperTabBar.git', :tag => s.version.to_s }
  s.source_files            = "Sources/SuperTabBar/**/*.{swift}"
  s.ios.deployment_target   = '14.0'
  s.swift_version           = '5.0'
end
