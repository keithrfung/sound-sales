class StaticPagesController < ApplicationController
  def ranking
    @rankedUsers = User.all.sort_by(&:sales_total).reverse
  end
  
end
