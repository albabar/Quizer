# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

options = %w{a b c d}
['Math Class Test', 'English Final', 'Bangla Mid Term', 'Physics Fina', 'Chemistry Weekly'].each do |t|
  topic = Topic.find_or_create_by!(title: t)
  (1..rand(20..40)).each do |n|
    Question.create!(
        title: topic.title + 'question' + n.to_s, topic: topic,
        explanation: 'Lorem impsum dollor sit amet',
        option_a: 'Option A' + n.to_s,
        option_b: 'Option B' + n.to_s,
        option_c: 'Option C' + n.to_s,
        option_d: 'Option D' + n.to_s,
        answer: options[rand(3)]
    )
  end
end