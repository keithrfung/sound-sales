class HomeController < ApplicationController

def dashboard
    @sales_count = Sale.all.count
    @commissions_count = Sale.all.where(user_id: current_user.id).count
end

end