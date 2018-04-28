class Address < ApplicationRecord
    has_many :comments, dependent: :delete_all
    validates :FirstName, presence: true, length: {minimum: 3}
    validates :LastName, presence: true, length: {minimum: 3}

    
end
