# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/gradle-android-test/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-gradle-android-test"
  spec.version       = Guard::GradleAndroidTest::VERSION
  spec.authors       = ["Kenji Abe"]
  spec.email         = ["kenji.01.star@gmail.com"]
  spec.description   = "Guard plugin for Android gradle test"
  spec.summary       = "Guard::GradleAndroidTest automatically run tests of Robolectric in Android studio"
  spec.homepage      = "https://github.com/STAR-ZERO/guard-gradle-android-test"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'guard', '~> 2.1'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
