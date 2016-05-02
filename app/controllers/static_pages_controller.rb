class StaticPagesController < ApplicationController
  def ranking
    @rankedUsers = User.all.sort_by(&:sales_total)
  end
  
end
