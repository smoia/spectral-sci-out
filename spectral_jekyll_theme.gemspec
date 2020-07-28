# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "spectral_jekyll_theme_forpubs"
  spec.version       = "0.1"
  spec.authors       = ["Stefano Moia"]
  spec.email         = ["s.moia@bcbl.eu"]

  spec.summary       = %q{A Jekyll version of the "Spectral" theme by HTML5 UP, further adapted specifically to display publications.}
  spec.homepage      = "https://gitlab.com/smoia/cvr-meica-motion-removal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_development_dependency "jekyll", "~> 4.0"
  spec.add_development_dependency "bundler", "~> 2.1.4"
end
