class Address < ApplicationRecord
    validates :FirstName, presence: true, length: {minimum: 3}
    validates :LastName, presence: true, length: {minimum: 3}
end
