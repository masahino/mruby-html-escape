MRuby::Gem::Specification.new('mruby-html-escape') do |spec|
  spec.license = 'MIT'
  spec.authors = 'masahino'
  spec.add_test_dependency 'mruby-regexp-pcre',  :github => 'iij/mruby-regexp-pcre'
  spec.add_test_dependency 'mruby-kernel-ext'
end
