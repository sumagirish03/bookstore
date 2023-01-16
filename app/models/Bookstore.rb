class Bookstore <ApplicationRecord
    validates :bookName, presence: true, length: {minimum: 2, maximum: 100}
    validates :bookAuthor, presence: true, length: {minimum: 2, maximum: 50}
    validates :bookQuantity, presence: true, length: {minimum: 1, maximum: 1000}
end