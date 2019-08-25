lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'graphql_devise/version'

Gem::Specification.new do |spec|
  spec.name          = 'graphql_devise'
  spec.version       = GraphqlDevise::VERSION
  spec.authors       = ['Mario Celi', 'David Revelo']
  spec.email         = ['mcelicalderon@gmail.com', 'david.revelo.uio@gmail.com']

  spec.summary       = 'GraphQL queries and mutations on top of devise_token_auth'
  spec.description   = 'GraphQL queries and mutations on top of devise_token_auth'
  spec.homepage      = 'https://github.com/graphql-device/graphql_devise'
  spec.license       = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/graphql-device/graphql_devise'
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.test_files    = Dir['spec/**/*']

  spec.required_ruby_version = '>= 2.2.0'

  spec.add_dependency 'devise_token_auth', '>= 0.1.37'
  spec.add_dependency 'graphql', '> 1.8'
  spec.add_dependency 'rails', '> 4.0'

  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency 'faker'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'sqlite3', '~> 1.3.6'
end
