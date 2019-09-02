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
  description: "Le Développeur Front-End est en charge d’optimiser l’ergonomie et la navigation d’un site web. Contrairement au Développeur Back-End, le Développeur Front-End ne vit pas dans l’ombre. Son travail est visible à l’écran et le rendu est l’élément premier que l’utilisateur verra. Afin de rendre l’interface des utilisateurs agréable, le Développeur Front-End se tient régulièrement informé des évolutions web. Son objectif est de proposer un site internet ergonomique et accessible. Pour cela, une connaissance approfondie des normes du W3C lui est nécessaire.",
  address: "2 avenue des saules"
)


Job.create!(
  name: "Developpeur Back-End",
  description: "Le Développeur Back-End est en charge de l’ensemble des fonctionnalités d’un site web. A la différence du Développeur Front-End, le Développeur Back-End ne s’occupe pas de l’aspect ergonomique du site mais de l’aspect technique et fonctionnel. Il travaille dans l’ombre. Il peut concevoir un site web et dans ce cas réaliser lui-même l’architecture technique du site ; ou bien rester sur la plateforme instaurée et adapter des solutions techniques sur celle-ci.
S’il crée le site, il devra partir de zéro et prendre en considération les inconvénients auxquels il devra faire face.",
  address: "2 avenue des saules"

)


Job.create!(
  name: "Product Owner",
  description: "Le Product Owner ou PO est le responsable de la définition et de la conception d’un produit. Expert de la méthodologie agile, il fait le lien entre la partie métier (bonne vision business) et la partie technique du projet. Il doit porter la vision du produit. Il est l’interface entre l’utilisateur, le Scrum Master et les équipes chargées du développement. Ce métier est souvent considéré comme étant un nouveau type de Chef de Projet, la responsabilité principale est de définir un produit qui apportera le maximum de valeur métier aux utilisateurs dans le temps et le budget impartis au projet.",
  address: "2 avenue des saules"
)

puts 'Destroy all the games'
Game.destroy_all
Answer.destroy_all
Question.destroy_all

Question.create!(
  description: "Quel est ton prénom ?",
  answer_1: "Le prénom",
  answer_2: "Le prénom",
  value_1: 0,
  value_2: 0
)

Question.create!(
  description: "Choisis ton avatar",
  answer_1: "girl-back-head.svg",
  answer_2: "boy-back-head.svg",
  value_1: 2,
  value_2: -2
)

Question.create!(
  description: "Tu es une personne organisée, et le désordre te stresse :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu as des facilités à rester serein(e) et concentré(e) :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu préfères passer du temps sur ton ordinateur, plutôt que de prendre une feuille et dessiner :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Tu préfères planifier tes voyages à l’avance avec tes parents plutôt que partir en mode 'aventure' :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
  )

Question.create!(
  description: "Les problèmes en maths, tu détestes ça :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: -1,
  value_2: 1
)

Question.create!(
  description: "Tu mets souvent à jour les applications de ton smartphone ?",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: -1,
  value_2: 1
)

Question.create!(
  description: "La ponctualité, c’est important pour toi :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Ça t’arrive de lire les modes d’emploi :",
  answer_1: "Oui",
  answer_2: "Non",
  value_1: 1,
  value_2: -1
)

Question.create!(
  description: "Être populaire c’est important pour toi (sois honnête) :",
  answer_1: "Oui",
  answer_2: "Non",
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

puts "create Netflix Card"

casadepapel = Recommandation.create!(
  name: "casadepapel",
  age: "18",
  genre: "Actuel",
  origine: "US",
  image: "casadepapel.jpeg"


  )
