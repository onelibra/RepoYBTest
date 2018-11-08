Pod::Spec.new do |s|
s.name         = 'RepoYBTest'
s.version      = '1.0.1'
s.summary      = 'An easy way to use pull-to-refresh'
s.homepage     = 'https://github.com/onelibra/RepoYBTest'
s.license      = 'MIT'
s.authors      = {'yangbo' => 'yangbo@zgjyjx.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/onelibra/RepoYBTest.git', :tag => s.version}
s.source_files = 'Test/**/*.{h,m}'
s.requires_arc = true
end
