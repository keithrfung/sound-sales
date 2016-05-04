class StaticPagesController < ApplicationController
  def ranking
    @rankedUsers = User.all.where(role: 'Sales').sort_by(&:sales_total).reverse
  end
  
end
