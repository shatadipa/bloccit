require 'random_data'

50.times do

  Post.create!(title: RandomData.random_sentence,
               body: RandomData.random_paragraph)
end

posts=Post.all

100.times do
  Comment.create!(post: posts.sample, body: RandomData.random_paragraph)
end

p=Post.find_or_create_by!(title:'Unique Post', body:'Unique Post Body')
Comment.find_or_create_by!(post: p, body: 'Unique Comment Body')
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"