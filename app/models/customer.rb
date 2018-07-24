 class Customer < ApplicationRecord

   validates :customer_name, presence: true, length: { maximum: 30 }

   has_and_belongs_to_many :books
   belongs_to :user
   has_one :cart

 end
