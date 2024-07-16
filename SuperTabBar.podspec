Pod::Spec.new do |s|
  s.name                    = 'SuperTabBar'
  s.version                 = '0.0.2'
  s.summary                 = 'Alternative custom TabView component'
  s.authors                 = { 'Daniil Sentsov' => 'daniil_sencov@mail.ru' }
  s.homepage                = 'https://github.com/daniil108/SuperTabBar'
  s.license                 = { :type => "MIT", :file => "LICENSE" }
  s.source                  = { :git => 'https://github.com/daniil108/SuperTabBar.git', :tag => s.version.to_s }
  s.source_files            = "Sources/SuperTabBar/**/*.{swift}"
  s.ios.deployment_target   = '13.0'
  s.swift_version           = '5.10'
end
