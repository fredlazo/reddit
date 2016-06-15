require 'random_data'

# Create Sponsored Posts
50.times do
# #1
  SponsoredPost.create!(
# #2
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    price: RandomData.random_number
  )
end
sponsored_posts = SponsoredPost.all

# Create Comments
# #3


puts "Seed finished"
puts "#{SponsoredPost.count} sponsored posts created"
