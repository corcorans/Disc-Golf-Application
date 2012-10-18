class User < ActiveRecord::Base
  attr_accessible :password, :username
  validate :username, :presence => true
  validate :password, :presence => true,
                      :length => { :minimum => 5 }
end
