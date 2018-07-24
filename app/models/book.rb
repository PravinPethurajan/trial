class Book < ApplicationRecord
    validates :name, presence: true
    validates :synopsis, presence: true, length: { minimum: 5, maximum: 1000 }
    belongs_to :user
    belongs_to :cart
    has_and_belongs_to_many :customer
    validates :user_id, presence: true
    default_scope -> { order(updated_at: :desc)}
end
