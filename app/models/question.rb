class Question < ApplicationRecord


    belongs_to :user, optional: true

    has_many :tallies

    has_and_belongs_to_many :hashtags

    
    if @current_user.present? && current_user.tallies.length > 5  
        
        def self.preference_questions
            
            
            

        end # closes self.preference_questions

    else

        def self.random_question
        
            Question.order('RANDOM()').first
        
        end # closes self.random_question

    end
    



end


