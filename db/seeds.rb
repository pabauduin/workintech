# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "destroy all the jobs"
Job.destroy_all

Job.create!(
  name: "Developpeur Front-End",
  description: "Lorsque l'on parle de Front-End, il s'agit finalement des éléments du site que l'on voit à l'écran et avec lesquels on peut interagir. Ces éléments sont composés de HTML, CSS et de Javascript contrôlés par le navigateur web de l'utilisateur.
  Les champs de compétence du Front-End peuvent être séparer en deux : Le design, le développement HTML, CSS, Javascript",
  address: "2 avenue des saules"
)


Job.create!(
  name: "Developpeur Back-End",
  description: "Ainsi, le programmeur back-end se charge de la mise en place, de la configuration, du développement et de la maintenance du serveur, de la base de données et de l’application web en général. Un développeur de l’ombre sans lequel les sites Internet et les applications ne pourraient tout simplement pas fonctionner et exister ! Bien évidemment, ces deux professionnels collaborent étroitement tout au long du projet de développement web.",
  address: "2 avenue des saules"

)


Job.create!(
  name: "Product Owner",
  description: "Le Product Owner est le lien entre le client et l’équipe. C’est donc lui qui, au sein de cette dernière, porte la vision du produit. Il est l’interlocuteur privilégié des utilisateurs. Il devra être très disponible, aussi bien pour les utilisateurs que pour l’équipe. Ses compétences ne se limitent toutefois pas au domaine métier puisqu’il participe activement au sprint et plus particulièrement à la mise en place des tests. Il favorise également la dynamique de l’équipe en lui fournissant une reconnaissance à chaque fin de sprint lors de la présentation du produit au client.",
  address: "2 avenue des saules"
)

puts 'Destroy all the games'
Game.destroy_all
Answer.destroy_all
Question.destroy_all

Question.create!(
  description: "Choisis ton avatar",
  answer_1: "girl-back-head.svg",
  answer_2: "boy-back-head.svg",
  value_1: 2,
  value_2: -2
)

Question.create!(
  description: "Tu es une personne organisée, et le désordre te stress",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu as des facilités à rester serein(e) et concentré(e) :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu préfères passer du temps sur ton ordinateur, plutôt que de prendre une feuille et dessiner :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu préfères planifier tes voyages à l’avance avec tes parents plutôt que partir en mode 'aventure' :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
  )

Question.create!(
  description: "Les problèmes en maths, tu détestes ça :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: -1,
  value_2: 1
)

Question.create!(
  description: "Tu mets souvent à jour les applications de ton smartphone ?",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: -1,
  value_2: 1
)

Question.create!(
  description: "La ponctualité, c’est important pour toi :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Ça t’arrive de lire les modes d’emplois :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: " Être populaire c’est important pour toi (sois honnête) :",
  answer_1: "D'accord",
  answer_2: "Pas d'accord",
  value_1: -1,
  value_2: 1
)

puts 'Create 1 Game'
dragon_quest = Game.create!(
      name: "Dragon Quest",
      game_type: "Frontend",
      description: "Le dragon attaque votre village. Approchez vous suffisamment pour le combattre et le tuer !",
      short_description: "Approchez vous du dragon et tuez le !",
      variable1: "margin",
      background_image: "mountain-game.svg",
      action_image: "hero.svg",
      solution_variable1: "3",
      logo: "dragon-logo.svg",
      game_type_image: "bubble-front.svg"
      )

trump = Game.create!(
  name: "Trump",
  game_type: "Frontend",
  description: "Ce facétieux de Donald a pris la décision de taxer notre emblème nationale ! Moquons-nous gentiment en lui ajoutant un nez de clown. A toi de trouver la bonne couleur, la bonne taille et le bon emplacement ! :)",
  short_description: "Ajoute un nez de clown à Donald Trump",
  variable1: "marge",
  variable2: "color",
  variable3: "size",
  background_image: "trump.png",
  action_image: "red-nose.svg",
  solution_variable1: "3",
  solution_variable2: "red",
  solution_variable3: "10",
  game_type_image: "bubble-front.svg",
  logo: "trump.svg"

)

dragon_revenge = Game.create!(
  name: "Dragon Quest II",
  game_type: "Frontend",
  description: "Le dragon est de retour, équipez vous et repartez au combat !",
  short_description: "Le retour du dragon.",
  variable1: "marge",
  variable2: "color",
  variable3: "size",
  background_image: "trump.png",
  action_image: "red-nose.svg",
  solution_variable1: "39",
  solution_variable2: "red",
  solution_variable3: "10",
  game_type_image: "bubble-front.svg",
  logo: "sword.svg"

)
netflix = Game.create!(
  name: "Netflix",
  game_type: "back-end",
  description: "Le code de Netflix est tout pété et les recommandations ne sont plus du tout adaptées. Configurer le code pour améliorer les recommandations.",
  short_description: "Améliorer les recommandations de Netflix.",
  variable1: "marge",
  variable2: "color",
  variable3: "size",
  background_image: "trump.png",
  action_image: "red-nose.svg",
  solution_variable1: "39",
  solution_variable2: "red",
  solution_variable3: "10",
  logo: "netflix.svg",
  game_type_image: "bubble-front.svg"
)


puts "Success"

