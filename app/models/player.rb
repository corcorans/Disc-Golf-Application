class Player < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :date, :course_name, :par, :score
end
