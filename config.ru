require 'serve'
require 'serve/rack'

root = File.dirname __FILE__

run Rack::Cascade.new([
  Serve::RackAdapter.new(root + '/app/wireframes'),
  Serve::RackAdapter.new(root + '/app/assets')
])