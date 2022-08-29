# ----------------------------------------------------------------- #
# ---------------------------- Users ------------------------------ #
# ----------------------------------------------------------------- #
print "Creating Users..."

User.destroy_all

u1 = User.create! name: 'Jim', email: 'jim@the_office.com', password: 'chicken', dob: '1979-05-15'
u2 = User.create! name: 'Pam', email: 'pam@the_office.com', password: 'chicken', dob: '1979-09-25'
u3 = User.create! name: 'Dwight', email: 'dwight@the_office.com', password: 'chicken', dob: '1970-02-26'

puts "created #{User.count}"



# ----------------------------------------------------------------- #
# -------------------------- Questions ---------------------------- #
# ----------------------------------------------------------------- #
print "Creating Questions..."

Question.destroy_all

q1 = Question.create! opt_A: 'have everyone be able to read your thoughts', opt_B: 'for everyone you know to have access to your internet history'
q2 = Question.create! opt_A: 'always have B.O. and not know it', opt_B: 'always smell B.O. on everyone else?'
q3 = Question.create! opt_A: 'get slapped in the face every time you thought about sex', opt_B: 'sneeze continuously while having sex'
q4 = Question.create! opt_A: 'have someone tell you the brutal truth', opt_B: 'have them lie to protect your feelings'

puts "created #{Question.count}"


# ----------------------------------------------------------------- #
# -------------------------- Hashtags ----------------------------- #
# ----------------------------------------------------------------- #
print "Creating Hashtags..."

Hashtag.destroy_all

h1 = Hashtag.create! name: 'adult'
h2 = Hashtag.create! name: 'minor'
h3 = Hashtag.create! name: 'rude'
h4 = Hashtag.create! name: 'wholesome'

puts "created #{Hashtag.count}"

h1.questions << q3 

# puts "#{}"

# # ----------------------------------------------------------------- #
# # --------------------------- Tallies ----------------------------- #
# # ----------------------------------------------------------------- #

print "Creating Tallies..."

Tally.destroy_all

t1 = Tally.create! user_id: u1.id, question_id: q1.id, question_answer: false  
t2 = Tally.create! user_id: u2.id, question_id: q3.id, question_answer: false
t3 = Tally.create! user_id: u2.id, question_id: q2.id, question_answer: true
t4 = Tally.create! user_id: u3.id, question_id: q1.id, question_answer: true

puts "created #{Tally.count}"

# ----------------------------------------------------------------- #



u1.questions << q1 << q4
u2.questions << q2
u3.questions << q3