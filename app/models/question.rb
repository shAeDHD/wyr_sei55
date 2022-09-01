class Question < ApplicationRecord


    belongs_to :user, optional: true

    has_many :tallies

    has_and_belongs_to_many :hashtags

    
    if @current_user.present? && @current_user.tallies.length > 5  
        
        def self.preference_questions
            
            # obtains IDs of each question answered via the shared 'tallies' table
            answered_q_ids = @current_user.tallies.pluck(:question_id).uniq

            # use question IDs to obtain IDs of hashtags associated with each question 
            answered_q_ids.map do |q_id|

                Question.where(id: q_id)

            end    

            

        end # closes self.preference_questions

    else

        def self.random_question
        
            Question.order('RANDOM()').first
        
        end # closes self.random_question

    end
    



end


