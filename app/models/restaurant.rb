class Restaurant < ApplicationRecord
                    #  this destroys reviews when a restaurant is deleted
  has_many :reviews, dependent: :destroy
end
