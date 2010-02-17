class External < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :main
end