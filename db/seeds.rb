# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

authors = [
  {name: 'Bill Murray'}
]

articles = [
  {
    title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
    lead: "quia et suscipit suscipit recusandae",
    body: "consequuntur expedita et cum reprehenderit molestiae ut ut quas totam nostrum rerum est autem sunt rem eveniet architecto"
  },
  {
    title: "qui est esse",
    lead: "est rerum tempore vitae sequi sint nihil",
    body: "reprehenderit dolor beatae ea dolores neque fugiat blanditiis voluptate porro vel nihil molestiae ut reiciendis qui aperiam non debitis possimus qui neque nisi nulla"
  },
  {
    title: "ea molestias quasi exercitationem repellat qui ipsa sit aut",
    lead: "et iusto sed quo iure voluptatem occaecati ",
    body: "omnis eligendi aut ad voluptatem doloribus vel accusantium quis pariatur molestiae porro eius odio et labore et velit aut"
  },
  {
    title: "eum et est occaecati",
    lead: "ullam et saepe reiciendis voluptatem",
    body: "adipisci sit amet autem assumenda provident rerum culpa quis hic commodi nesciunt rem tenetur doloremque ipsam iure quis sunt voluptatem rerum illo velit"
  },
  {
    title: "nesciunt quas odio",
    lead: "repudiandae veniam quaerat sunt sed",
    body: "alias aut fugiat sit autem sed est voluptatem omnis possimus esse voluptatibus quis est aut tenetur dolor neque"
  },
]

if Author.all.count == 0
  Author.create(authors)
end

if Article.all.count == 0
  author = Author.last
  articles.each do |a|
    a[:author] = author
    Article.create(a)
  end
end
