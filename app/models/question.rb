class Question < ApplicationRecord


    belongs_to :user, optional: true

    has_many :tallies

    has_and_belongs_to_many :hashtags


    def question_selection

        if @current_user.present? && @current_user.tallies.length > 3  
            
            preference_questions

            def self.preference_questions
                
                # in order to ensure fresh selection, reset hashtag_ids to 'nil' at beginning
                hashtag_ids = nil 
            
                # obtains IDs of each question answered via the shared 'tallies' table
                answered_q_ids = @current_user.tallies.pluck(:question_id).uniq

                # use question IDs to obtain IDs of hashtags associated with each question 
                hashtag_ids = answered_q_ids.map do |q_id|
                    
                    Question.find(q_id).hashtags.ids
                    
                end    

                # rearrange data into useable state
                hashtag_pref = hashtag_ids.flatten.tally.sory_by{|item|item[1]}.reverse[0..2]
                
                # further tidy - should show the id of the user's 3 most interacted with hashtags
                hashtag_pref = hashtag_pref[0].zip(hashtag_pref[1],hashtag_pref[2])[0]

                # use the preferrence hashtag ids to create an array of questions
                # by matching hashtags to questions 
                pref_qs_array = Question.joins(:hashtags).where(hashtags:{id:hashtag_pref}).uniq

                # next, filter out questions that have already been answered by 
                # comparing with the previously assembled IDs of answered questions.
                possible_qs = pref_as_array.select do |question|
                    
                    answered_q_ids.include? question.id
                
                end
                
                def find_new_questions

                    four_new_qs = possible_qs.shuffle[0..3]

                end

                

            end # closes self.preference_questions

        else

            def self.random_question
            
                Question.order('RANDOM()').first
            
            end # closes self.random_question

        end # closes else/end

    end

end


