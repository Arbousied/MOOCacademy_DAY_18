# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Course.destroy_all
  10.times do
    course = Course.create!(title: Faker::FamousLastWords.last_words, description: Faker::HarryPotter.quote)
  end

  10.times do
    lesson = Lesson.create!(title: Faker::FamousLastWords.last_words, body: Faker::HarryPotter.quote, course_id: (rand(Course.first.id..Course.last.id)))
  end
