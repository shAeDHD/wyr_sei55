class Tally < ApplicationRecord

    has_and_belongs_to_many :questions

end