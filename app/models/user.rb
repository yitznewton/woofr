class User < ActiveRecord::Base
  def self.random
    offset(rand(count)).first
  end
end
