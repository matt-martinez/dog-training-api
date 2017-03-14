# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all
Behavior.destroy_all

User.create([
  { name: "Matt", username: "thatmattdude", email: "m@m.com", password: "password" },
  { name: "Perla", username: "perlalala", email: "p@p.com", password: "password" },
  { name: "Kevin", username: "wonderdogtrainer", email: "k@k.com", password: "password" }
  ])

Post.create([
  { title: "My dog keeps peeing in the house!", body: "I need help preventing my dog from peeing all over my house. I've tried everything from puppy pads to stopping her mid-pee and rushing her outside. If someone could please give me some suggestions, I would really appreciate it! I'm so tired of shampooing my carpets...", user_id: 1 },
  { title: "Crate training.", body: "I'm trying to crate train my new puppy. He doesn't seem to want to relax and whines a lot to be let out. I feel bad when I hear him whining, but it's important that he learns because I work a lot and sometimes I'll need to leave him for a couple of hours at a time. Any thoughts on how I can make this process easier?", user_id: 2 }
  ])

Comment.create([
  { body: "Have you tried rewarding her when she successfully go outside? That has always helped me with the potty training process.", user_id: 2, post_id: 1 },
  { body: "I've tried that, but admittedly not very often. I'll try and do it consistently. Thanks!", user_id: 1, post_id: 1 },
  { body: "I'm trying to do this also! Would appreciate any suggestions.", user_id: 1, post_id: 2 },
  { body: "Still looking for some help!", user_id: 2, post_id: 2 },
  { body: "Hi there! The key is to getting your dog comfortable with his crate and teaching him he's safe there. Try adding a blanket or piece of clothing with a combination of his/your scents so he will not only become comfortable, but also feel close to you when you're gone. Hope this helps!", user_id: 3, post_id: 2 },
  { body: "Thank you for the suggestion! After trying this for a few weeks he seems to be getting much more comfortable.", user_id: 2, post_id: 2 }
  ])

Behavior.create([
    { name: "Excessive Barking", suggestion_one: "Try and figure out why your dog is barking. What is he doing beforehand?", suggestion_two: "Once you figure out the cause of your dog's barking, how do you react? Be sure you aren't rewarding her!", suggestion_three: "If your dog is used to getting your attention by barking, ignore him. This means: no eye-contact, touching, or speaking/scolding.", suggestion_four: "Don't give in when teaching your dog that barking doesn't work! If you show her any attention before she's quiet, she will learn to be persistent instead.", suggestion_five: "Once your dog is quiet, then you can give attention. Through repetition, your dog will learn that remaining quiet works much more effectively than barking!", resource_one: "https://apdt.com/resource-center/barking/", resource_two: "http://www.aspca.org/pet-care/dog-care/common-dog-behavior-issues/barking", resource_three: "https://www.cesarsway.com/dog-behavior/barking-and-howling/5-tips-for-handling-nuisance-barking" },
    { name: "Destructive Chewing", suggestion_one: "Determine the facts around your dogs chewing. How old is your pup? Have they exercised recently? How long has it been since they had food?", suggestion_two: "Dogs naturally chew when they're young to relieve teething pains, and they chew to strengthen and clean their jaw/teeth as they get older.", suggestion_three: "Dogs also chew when they're bored, try exercising your dog regularly to prevent them from finding their own source of entertainment.", suggestion_four: "If it's later in the day when your dog starts to chew, it could mean they're hungry and looking for something to eat. Try adjusting their meal schedule.", suggestion_five: "Try redirecting your dogs attention by introducing strong, durable toys for them to chew on. They will certainly appreciate the challenge of noming on these toys instead of your couch!", resource_one: "http://www.aspca.org/pet-care/dog-care/common-dog-behavior-issues/destructive-chewing", resource_two: "https://apdt.com/resource-center/destructive-chewing/", resource_three: "https://www.cesarsway.com/dog-behavior/destructive-chewing/the-causes-of-unwanted-chewing-and-how-to-stop-it" }
  ])
