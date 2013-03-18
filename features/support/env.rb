Bundler.setup
require File.expand_path('../../../s3_ftp_driver', __FILE__)

# Requires supporting ruby files with custom matchers and macros, etc,
# in feature/support/ and its subdirectories.
Dir[File.dirname(__FILE__) + "/**/*.rb"].each {|f| require f }
#RSpec.configure do |config|
#  config.include ReaderSpecHelper
#end
