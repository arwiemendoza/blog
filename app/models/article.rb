class Article < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :body, presence: true

    has_many :comments
end
