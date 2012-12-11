class StatisticsController < ApplicationController
  def create
    @total = Player.group(:course_name).sum(:score)
  end
end
