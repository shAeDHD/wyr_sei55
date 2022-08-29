class Tally < ApplicationRecord

    belongs_to :question, optional: true
    belongs_to :user, optional: true


    # CREATE CUSTOM DEFINITION FOR
    # calculating tally of answers for question 
    # step 1. source question_id
    # step 2. source user_id
    # step 3. create calculation 

end
