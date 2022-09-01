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
q2 = Question.create! opt_A: 'always have B.O. and not know it', opt_B: 'always smell B.O. on everyone else'
q3 = Question.create! opt_A: 'have a baby vomit on you', opt_B: 'vomit on a baby'
q4 = Question.create! opt_A: 'have someone tell you the brutal truth', opt_B: 'have them lie to protect your feelings'
q5 = Question.create! opt_A: "have your name tattooed on your forehead", opt_B: "have no front teeth"
q6 = Question.create! opt_A: "give up your phone", opt_B: "only wear crocs for the rest of your life"
q7 = Question.create! opt_A: "clog the toilet on a first date", opt_B: "first day at a new job"
q8 = Question.create! opt_A: "have an abnormally big toe", opt_B: "an abnormally big ear"
q9 = Question.create! opt_A: "be three feet tall", opt_B: "eight feet tall"
q10 = Question.create! opt_A: "have to be naked at work for an hour", opt_B: "be dropped off two miles from your house whilst you're naked and you have to try and get home"
q11 = Question.create! opt_A: "smell like cheese (which has been left in the sun)", opt_B: "a hamster cage (which hasn't been cleaned for a fortnight)"
q12 = Question.create! opt_A: "be a mad genius", opt_B: "popular but dim"
q13 = Question.create! opt_A: "a nose that never stops growing", opt_B: "ears that never stop growing"
q14 = Question.create! opt_A: "be able to travel everywhere for free", opt_B: "eat everywhere for free"
q15 = Question.create! opt_A: "have a full-blown moustache for a year", opt_B: "permanently hairy legs for ten years"

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
h5 = Hashtag.create! name: 'funny'
h6 = Hashtag.create! name: 'serious'
h7 = Hashtag.create! name: 'gross'
h8 = Hashtag.create! name: 'silly'

puts "created #{Hashtag.count}"

h1.questions << q3 << q1 << q5 << q7 << q10 << q14
h2.questions << q2 << q4 << q6 << q8 << q9 << q11 << q12 << q13 << q15
h3.questions << q3 << q2 << q7 << q10 << 
h4.questions << q4 << q14   
h5.questions << q3 << q2 << q1 << q6 << q8 << q9 << q10 << q13 << q15
h6.questions << q4 << q14
h7.questions << q5 << q7 << q8 << q11
h8.questions << q2 << q3 << q6 << q7 << q8 << q10 << q12 << q13 << q15

# puts "Hashtag Question '#{q3.id}' has hashtags: #{q3.hashtags.pluck[:name].join(', ')}"

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



u1.questions << q1 << q4 << q8 << q13 << q14
u2.questions << q2 << q6 << q9 << q11 << q12 << q15
u3.questions << q3 << q5 << q7 << q10 











