# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'turkish_bin_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "turkish_bin_numbers"
  spec.version       = TurkishBinNumbers::VERSION
  spec.authors       = ["Tolga Gezginiş"]
  spec.email         = ["tolga@gezginis.com"]

  spec.summary       = "Bin Numbers for Turkish Banks"
  spec.description   = "Gives information about bank, card type and debit. Also you can query bin numbers by bank."
  spec.homepage      = "https://github.com/tgezginis/turkish_bin_numbers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         += Dir.glob("lib/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
