require 'random_data'


15.times do
  Topic.create!(
      name:         RandomData.random_sentence,
      description:  RandomData.random_paragraph
  )
end
topics = Topic.all



50.times do
  Post.create!(
      topic:  topics.sample,
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph
  )
end
posts=Post.all



50.times do
  SponsoredPost.create!(
      topic:  topics.sample,
      title:  RandomData.random_sentence,
      body:   RandomData.random_paragraph
  )
end



100.times do
  Comment.create!(post: posts.sample, body: RandomData.random_paragraph)
end



50.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: rand(50..100)
  )
end


50.times do
  Question.create!(
      title: RandomData.random_sentence,
      body: RandomData.random_paragraph,
      resolved: [true, false].sample
  )
end




p=Post.find_or_create_by!(title:'Unique Post', body:'Unique Post Body')
Comment.find_or_create_by!(post: p, body: 'Unique Comment Body')
puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
