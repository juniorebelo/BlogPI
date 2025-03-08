# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create a user
user = User.create!(email: "staging1@test.com.br", nickname: Faker::Name.name, password: "123456")
user.avatar.attach(io: File.open("app/assets/images/avatar.jpg"), filename: "avatar.jpg")

user2 = User.create!(email: "staging2@test.com.br", nickname: Faker::Name.name, password: "123456")
user2.avatar.attach(io: File.open("app/assets/images/avatar2.jpg"), filename: "avatar2.jpg")

# Create a post
post = Post.create!(title: "Hello, World!", content: "This is my first post!", user: user)
post = Post.create!(
  title: "O Poder de Recomeçar",
  content: %(Cada dia é uma página em branco, pronta para ser escrita com novas histórias,
  escolhas e aprendizados. Recomeçar não é sobre esquecer o passado, mas sobre abraçar o futuro com coragem e determinação.
  Não importa quantas vezes você precise começar de novo, cada tentativa é um
  passo mais perto de se tornar quem você deseja ser. Afinal, o mundo sempre oferece
  novas manhãs para aqueles que acreditam na força de um novo começo. 🌅🌟),
  user: user
)
post = Post.create!(
  title: "A Magia dos Pequenos Momentos",
  content: %(A vida é uma coleção de pequenos instantes que, juntos, formam
  histórias extraordinárias. Desde o aroma do café fresco pela manhã até o sorriso
  inesperado de um estranho na rua, cada detalhe carrega uma dose de magia.
  O segredo está em desacelerar, observar e deixar que esses momentos simples nos preencham com gratidão.
  Afinal, são eles que transformam dias comuns em memórias inesquecíveis. 🪄✨),
  user: user
)
