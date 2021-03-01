# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Posts

post1 = Post.create(author: "Rylee Paul",
                                authorId: 9,
                                likes: 960,
                                popularity: 0.13,
                                reads: 50361,
                                tags: [
                                "tech",
                                "health"
                                ])

post2 = Post.create(author: "Zackery Turner",
                                authorId: 12,
                                likes: 469,
                                popularity: 0.68,
                                reads: 90406,
                                tags: [
                                "startups",
                                "history"
                                ])
post3 =  Post.create(author: "Elisha Friedman",
                                authorId: 8,
                                likes: 728,
                                popularity: 0.88,
                                reads: 19645,
                                tags: [
                                "science",
                                "design",
                                "tech"
                                ])    
post4 = Post.create(author: "Adalyn Blevins",
                                authorId: 11,
                                likes: 590,
                                popularity: 0.32,
                                reads: 80351,
                                tags: [
                                "tech"
                                ])    
post5 = Post.create(author: "Elisha Friedman",
                                authorId: 8,
                                likes: 230,
                                popularity: 0.31,
                                reads: 64058,
                                tags: [
                                "design",
                                "tech"
                                ]) 
post6 = Post.create(author: "Trevon Rodriguez",
                              authorId: 5,
                              likes: 311,
                              popularity: 0.67,
                              reads: 25644,
                              tags: [
                              "tech"
                              ])                   