 class Cart < ApplicationRecord
   has_many :books
   has_one :customer
 end
