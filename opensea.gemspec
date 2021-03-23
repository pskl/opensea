Gem::Specification.new do |s|
  s.name               = "opensea"
  s.version            = "0.0.1"
  s.default_executable = "opensea"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["pskl"]
  s.date = %q{2021-03-17}
  s.description = %q{Opensea Api Client}
  s.email = %q{hello@pascal.cc}
  s.files = ["Rakefile", "lib/opensea.rb", "lib/opensea/translator.rb", "bin/opensea"]
  s.test_files = ["test/test_opensea.rb"]
  s.homepage = %q{http://rubygems.org/gems/opensea}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{OpenSea!}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end