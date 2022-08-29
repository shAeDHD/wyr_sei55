class Question < ApplicationRecord

    belongs_to :user, optional: true

    has_many :tallies

    has_and_belongs_to_many :hashtags

    def self.random_question
        Question.order('RANDOM()').first
    end



end


