class Book < ApplicationRecord
    validates :name, presence: true
    validates :synopsis, presence: true, length: { minimum: 5, maximum: 1000 }
    belongs_to :user
    validates :user_id, presence: true
    default_scope -> { order(updated_at: :desc)}
end