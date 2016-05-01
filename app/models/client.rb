class Client < ActiveRecord::Base
	has_many :sales
    after_initialize :init

    def init
	    self.first_name		||= ""
	    self.last_name		||= ""
	    self.phone			||= ""
	    self.address_line_1	||= ""
	    self.address_line_2	||= ""
	    self.city			||= ""
	    self.state			||= ""
	    self.country		||= ""
	    self.zipcode		||= ""
    end
end
