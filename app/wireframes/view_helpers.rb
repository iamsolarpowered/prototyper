require 'bundler'
Bundler.require :default

module Models
  include Faker

  def application
    OpenStruct.new(:name => 'New Project')
  end
  
  def roles
    %w[ admin client moderator ]
  end
end

# This should really be a gem, if nothing exisits already.
# (Minus the sloppy dependencies, of course.)
module Randomness 
  def rand_from_array array
    array[rand(array.length)]
  end
  
  def rand_within low, high
    rand(high - low) + low
  end
  
  def can_or_not
    rand(10) < 8 ? "can" : "cannot"
  end
  
  def random_color colors = %w[ green green green green yellow yellow red ]
    rand_from_array colors
  end
  
  def random_role
    rand_from_array roles
  end
end

module ViewHelpers
  include Models
  include Randomness
end
