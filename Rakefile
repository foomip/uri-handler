# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "uri-handler"
  gem.homepage = "http://github.com/foomip/uri-handler"
  gem.license = "MIT"
  gem.summary = %Q{Additional string functionality to make uri encoding easier and cleaner to use in your Ruby code}
  gem.description = %Q{Nothing fancy going on here, this module is just a wrapper around the function CGI::escape
and CGI::unescape. Functionality is added to the String class, so just add the module and
the extra funcitons will be there for you to use (check out the README file for basic usage).
I just wanted an easier and cleaner way to encode/decode uri strings for my ruby projects.}
  gem.email = "nelsondcp@gmail.com"
  gem.authors = ["foomip"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "uri-handler #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
