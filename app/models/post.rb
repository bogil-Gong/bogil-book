class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  validates :title, presence: true, length: {minimum: 3, maximum: 30}
  validates :body, presence: true, length:{minimum: 3, maximum: 200}
end
