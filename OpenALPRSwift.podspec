Pod::Spec.new do |spec|
  spec.name = 'OpenALPRSwift'
  spec.version = '2.0.1'
  spec.summary = 'iOS Framework for the openalpr library ready to use in Swift and Objective-C.'
  spec.homepage = 'https://github.com/yasirmturk/openalpr-swift'
  spec.license = { type: 'GPL 3.0', file: 'LICENSE' }
  spec.authors = { 'Yasir M Türk' => 'i@yasirmturk.com' }
  spec.social_media_url = 'https://twitter.com/yasirmturk'

  spec.platform = :ios, '9.0'
  spec.requires_arc = true
  spec.source = { git: 'git@github.com:maxsystems/openalpr-swift.git', tag: "v#{spec.version}", submodules: true }
  spec.source_files = 'openalpr-swift/**/*.{h,mm,swift}'
  spec.resources = ['openalpr-swift/openalpr.conf', 'openalpr-swift/runtime_data']
  spec.frameworks = 'CoreGraphics', 'UIKit'
  spec.weak_framework = 'opencv2'
  spec.static_framework = true
  spec.vendored_frameworks = 'lib/openalpr.framework'
  spec.vendored_libraries =  'lib/libjpeg.a', 'lib/liblept.a', 'lib/libpng.a', 'lib/libtesseract.a', 'lib/libtiff.a'
  spec.dependency 'OpenCV', '~> 3.4.16'
end
