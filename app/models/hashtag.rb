class Hashtag < ApplicationRecord

    has_and_belongs_to_many :questions, optional: true

end
