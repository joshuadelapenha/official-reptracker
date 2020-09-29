# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lifter.create(name: "Josh", age: 25)
Lifter.create(name: "Adam", age: 30)
Exercise.create(name: "Closegrip Benchpress", category: "Benchpress")
Exercise.create(name: "Compeitition Squat", category: "Squat")
Exerciselog.create(reps: 5, weight: 500, lifter: Lifter.first, exercise: Exercise.first)
Exerciselog.create(reps: 3, weight: 315, lifter: Lifter.second, exercise: Exercise.second)
Exerciselog.create(reps: 8, weight: 405, lifter: Lifter.first, exercise: Exercise.second)