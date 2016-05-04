class HomeController < ApplicationController

def dashboard
    @sales_count = Sale.all.count
    @commissions_count = Commission.all.count
end

end