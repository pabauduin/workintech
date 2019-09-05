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
  short_description: "Le développeur front-end est en charge des parties des applications ou des sites web qui sont visibles directement par les utilisateurs et avec lesquelles ces derniers peuvent interagir.",
  description: "Le Développeur Front-End est en charge d’optimiser l’ergonomie et la navigation d’un site web. Contrairement au Développeur Back-End, le Développeur Front-End ne vit pas dans l’ombre. Son travail est visible à l’écran et le rendu est l’élément premier que l’utilisateur verra. Afin de rendre l’interface des utilisateurs agréable, le Développeur Front-End se tient régulièrement informé des évolutions web. Son objectif est de proposer un site internet ergonomique et accessible. Pour cela, une connaissance approfondie des normes du W3C lui est nécessaire.",
  job_type: "bubble-front.svg",
  address: "2 avenue des saules"
)


Job.create!(
  name: "Developpeur Back-End",
  short_description: "Le programmeur back-end se charge de la mise en place, de la configuration, du développement et de la maintenance du serveur, de la base de données et de l’application web en général.",
  description: "Le Développeur Back-End est en charge de l’ensemble des fonctionnalités d’un site web. A la différence du Développeur Front-End, le Développeur Back-End ne s’occupe pas de l’aspect ergonomique du site mais de l’aspect technique et fonctionnel. Il travaille dans l’ombre. Il peut concevoir un site web et dans ce cas réaliser lui-même l’architecture technique du site ; ou bien rester sur la plateforme instaurée et adapter des solutions techniques sur celle-ci.
S’il crée le site, il devra partir de zéro et prendre en considération les inconvénients auxquels il devra faire face.",
  job_type: "bubble-back.svg",
  address: "2 avenue des saules"

)


Job.create!(
  name: "Product Owner",
  short_description: "Chef d’orchestre, le PO fait le lien entre les clients et les équipes internes (techniques, marketing et design). C'est un véritable manager du projet et doit avoir des compétences multiples.",
  description: "Le Product Owner ou PO est le responsable de la définition et de la conception d’un produit. Expert de la méthodologie agile, il fait le lien entre la partie métier (bonne vision business) et la partie technique du projet. Il doit porter la vision du produit. Il est l’interface entre l’utilisateur, le Scrum Master et les équipes chargées du développement. Ce métier est souvent considéré comme étant un nouveau type de Chef de Projet, la responsabilité principale est de définir un produit qui apportera le maximum de valeur métier aux utilisateurs dans le temps et le budget impartis au projet.",
  job_type: "bubble-product.svg",
  address: "2 avenue des saules"
)

Job.create!(
  name: "Designer",
  short_description: "Il devra avant tout être créatif et imaginatif. Posséder une fibre artistique serait un atout non négligeable dans ce métier. Il devra savoir dessiner.",
  description: "Mi-graphiste, mi-informaticien, le web- designer est spécialisé dans la création des pages Web. Il s'occupe de tout l'aspect graphique d'un site Internet (illustrations, animations, typographie...). Il choisit la place des photos, la taille des caractères et les couleurs qui rendront la consultation agréable pour l'utilisateur. Il crée aussi les pictogrammes qui facilitent la lecture et la navigation dans le site. Dans certains cas, il sera amené à établir la charte graphique et à créer l'identité visuelle du site. C'est un exercice délicat car il faut respecter à la fois la demande du client, les impératifs de marketing et de communication, et ceux du public visé",
  job_type: "bubble-design.svg",
  address: "2 avenue des saules"
)

puts 'Destroy all the games'
Game.destroy_all
Answer.destroy_all
Question.destroy_all
School.destroy_all
Recommandation.destroy_all

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
  description: "Le dragon attaque votre village. Approche-toi suffisamment pour le combattre et le tuer !",
  concept: "Dans ce premier jeu tu devras jouer avec la <span class='concept'>marge</span> qu'il y a entre toi et le dragon. C'est une propriété qu'utilisent souvent les développeurs pour aligner les éléments sur le site.",
  short_description: "Approche-toi du dragon et sauve la princesse !",
  variable1: "margin",
  background_image: "mountain-game.svg",
  action_image: "hero.svg",
  solution_variable1: "3",
  logo: "dragon-logo.svg",
  game_type_image: "bubble-front.svg",
  difficulty: 1
  )

trump = Game.create!(
  name: "Trump",
  game_type: "Frontend",
  description: "Ce facétieux de Donald a pris la décision de taxer notre emblème nationale ! Moquons-nous gentiment en lui ajoutant un nez rouge de clown.",
  concept: "Tu réutiliseras la <span class='concept'>marge</span> dans cet exercice. Mais deux nouveaux concepts du développement front-end font leur apparition : La <span class='concept'>couleur</span> et la <span class='concept'>taille</span> !",
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
  logo: "trump.svg",
  difficulty: 2
)


netflix = Game.create!(
  name: "Netflix",
  game_type: "Backend",
  description: "Le code de Netflix est cassé, et les recommandations ne sont plus du tout adaptées. Améliore le code pour améliorer les recommandations.",
  short_description: "Les recommandations de Netflix sont cassées. Répare l'algorithme !",
  concept: "Pour ce premier exercice Back-end, on te demande de changer certaines <span class='concept'>conditions</span> pour modifier l'algorithme. Le travail d'un développeur est de travailler sur ces <span class='concept'>conditions</span> pour personnaliser le site internet.",
  variable1: "marge",
  variable2: "color",
  variable3: "size",
  background_image: "trump.png",
  action_image: "red-nose.svg",
  solution_variable1: "39",
  solution_variable2: "red",
  solution_variable3: "10",
  logo: "netflix.svg",
  game_type_image: "bubble-front.svg",
  difficulty: 2
)

dragon_revenge = Game.create!(
  name: "Dragon Quest II",
  game_type: "Backend",
  description: "Le dragon est de retour, équipe-toi et reparsa u combat !",
  short_description: "Le retour du dragon.",
  concept: "Combine toutes les notions que tu viens d'apprendre pour battre le dragon !",
  variable1: "marge",
  variable2: "color",
  variable3: "size",
  background_image: "trump.png",
  action_image: "red-nose.svg",
  solution_variable1: "39",
  solution_variable2: "red",
  solution_variable3: "10",
  game_type_image: "bubble-front.svg",
  logo: "sword.svg",
  difficulty: 3
)

puts "Creating Schools"


le_wagon_bordeaux = School.create!(
  name: "Le wagon Bordeaux",
  latitude: 44.859499,
  longitude: -0.565004,
  city: "bordeaux"
)

le_wagon_paris = School.create!(
  name: "Le wagon Bordeaux",
  latitude: 48.864989,
  longitude: 2.379842,
  city: "paris"
)

kedge_marseille = School.create!(
  name: "Le wagon Bordeaux",
  latitude: 43.232387,
  longitude: 5.433733,
  city: "marseille"
)


epitech = School.create!(
  name: "EPITECH",
  latitude: 50.636973,
  longitude: 3.062251,
  city: "lille"
)

le_wagon_lyon = School.create!(
  name: "LE WAGON Lyon",
  latitude: 45.769664,
  longitude: 4.834923,
  city: "lyon"
)


le_wagon_nantes = School.create!(
  name: "LE WAGON Nantes",
  latitude: 47.218158,
  longitude: -1.542955,
  city: "nantes"
)




le_wagon_lille = School.create!(
  name: "LE WAGON lille",
  latitude: 50.633349,
  longitude: 3.018990,
  city: "lille"
)



puts "Success"

puts "create Netflix Cards"

columbo = Recommandation.create!(
  name: "Columbo",
  age: "60",
  genre: "Police",
  origine: "US",
  image: "recommandations/columbo.jpg"
  )

fargo = Recommandation.create!(
  name: "Fargo",
  age: "60",
  genre: "Police",
  origine: "US",
  image: "recommandations/fargo.png"
  )

murder = Recommandation.create!(
  name: "Murder",
  age: "60",
  genre: "Police",
  origine: "US",
  image: "recommandations/murder.jpg"
  )

wire = Recommandation.create!(
  name: "The Wire",
  age: "60",
  genre: "Police",
  origine: "US",
  image: "recommandations/thewire.jpeg"
  )

himym = Recommandation.create!(
  name: "HIMYM",
  age: "60",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/himym.jpg"
  )

teentitans = Recommandation.create!(
  name: "Teen Titans GO",
  age: "10",
  genre: "Police",
  origine: "US",
  image: "recommandations/teentitan.png"
  )

tometjerry = Recommandation.create!(
  name: "Tom & Jerry",
  age: "10",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/tometjerry.jpg"
  )

friends = Recommandation.create!(
  name: "Friends",
  age: "60",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/friends.jpg"
  )

bigbangtheory = Recommandation.create!(
  name: "The BigBang Theory",
  age: "60",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/bigbang.jpg"
  )

thegoodplace = Recommandation.create!(
  name: "The Good Place",
  age: "60",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/thegoodplace.jpg"
  )

utopia = Recommandation.create!(
  name: "Utopia",
  age: "60",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/utopia.jpg"
  )

alteredcarbon = Recommandation.create!(
  name: "Altered Carbon",
  age: "60",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/alteredcarbon.jpg"
  )

another_life = Recommandation.create!(
  name: "Another Life",
  age: "60",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/anotherlie.jpg"
  )

timeless= Recommandation.create!(
  name: "Timeless",
  age: "60",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/timeless.jpg"
  )

marseille = Recommandation.create!(
  name: "Marseille",
  age: "60",
  genre: "Police",
  origine: "UE",
  image: "recommandations/marseille.jpg"
  )

bureaudeslegendes = Recommandation.create!(
  name: "Bureau des Légendes",
  age: "60",
  genre: "Police",
  origine: "UE",
  image: "recommandations/bureaudeslegendes.png"
  )

bureaudeslegendes = Recommandation.create!(
  name: "Bureau des Légendes",
  age: "20",
  genre: "Police",
  origine: "UE",
  image: "recommandations/bureaudeslegendes.png"
  )

engrenages = Recommandation.create!(
  name: "Engrenage",
  age: "60",
  genre: "Police",
  origine: "UE",
  image: "recommandations/engrenage.jpg"
  )

sherlock = Recommandation.create!(
  name: "Sherlock",
  age: "60",
  genre: "Police",
  origine: "UE",
  image: "recommandations/sherlock.jpg"
  )

sherlock = Recommandation.create!(
  name: "Sherlock",
  age: "20",
  genre: "Police",
  origine: "UE",
  image: "recommandations/sherlock.jpg"
  )

josephine = Recommandation.create!(
  name: "Joséphine Ange Gardien",
  age: "60",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/josephine.jpg"
  )

cameracafe = Recommandation.create!(
  name: "Caméra Café",
  age: "60",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/cameracafe.jpg"
  )

ungarsunefille = Recommandation.create!(
  name: "Un gars, Une fille",
  age: "60",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/ungarsunefillle.jpg"
  )

montypython = Recommandation.create!(
  name: "Monty Python",
  age: "60",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/montypython.jpg"
  )

osmosis = Recommandation.create!(
  name: "Osmosis",
  age: "60",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/osmosis.jpg"
  )

lesrevenants = Recommandation.create!(
  name: "Les Revenants",
  age: "60",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/lesrevenants.jpg"
  )

realhumans = Recommandation.create!(
  name: "Real Humans",
  age: "60",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/realhumans.jpg"
  )

realhumans2 = Recommandation.create!(
  name: "Real Humans",
  age: "20",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/realhumans.jpg"
  )

braquo = Recommandation.create!(
  name: "braquo",
  age: "20",
  genre: "Police",
  origine: "UE",
  image: "recommandations/braquo.jpg"
  )

borgen = Recommandation.create!(
  name: "Borgen",
  age: "20",
  genre: "Police",
  origine: "UE",
  image: "recommandations/borgen.jpeg"
  )

plusbellelavie = Recommandation.create!(
  name: "Plus Belle La Vie",
  age: "20",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/plusbellelavie.jpg"
  )

plancoeur = Recommandation.create!(
  name: "Plan Coeur",
  age: "20",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/plancoeur.jpg"
  )

dixpourcent = Recommandation.create!(
  name: "10%",
  age: "20",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/dixpourcent.jpg"
  )

sexeducation = Recommandation.create!(
  name: "Sex Education",
  age: "20",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/sexeeducation.jpg"
  )

advitam = Recommandation.create!(
  name: "Ad Vitam",
  age: ["20", "60"],
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/advitam.png"
  )

dark = Recommandation.create!(
  name: "Dark",
  age: "20",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/dark.jpeg"
  )

dark2 = Recommandation.create!(
  name: "Dark",
  age: "60",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/dark.jpeg"
  )

blackmirror = Recommandation.create!(
  name: "Black Mirror",
  age: "20",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/blackmirror.jpg"
  )

misfits = Recommandation.create!(
  name: "Misfits",
  age: "20",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/misfits.jpg"
  )

bodyguard = Recommandation.create!(
  name: "Bodyguard",
  age: "20",
  genre: "Police",
  origine: "US",
  image: "recommandations/bodyguard.jpg"
  )

mindhunter = Recommandation.create!(
  name: "Mindhunter",
  age: "20",
  genre: "Police",
  origine: "US",
  image: "recommandations/mindhunter.jpg"
  )

suits = Recommandation.create!(
  name: "Suits",
  age: "20",
  genre: "Police",
  origine: "US",
  image: "recommandations/suits.jpg"
  )

 rickandmorty = Recommandation.create!(
  name: "Rick & Morty",
  age: "20",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/rickandmorty.jpg"
  )

 bojack = Recommandation.create!(
  name: "Bojack Horseman",
  age: "20",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/bojack.jpg"
  )

 brookling99 = Recommandation.create!(
  name: "Brookling 99",
  age: "20",
  genre: "Comédie",
  origine: "US",
  image: "casadepapel.jpeg"
  )

riverdale = Recommandation.create!(
  name: "Riverdale",
  age: "20",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/riverdale.png"
  )

sense8 = Recommandation.create!(
  name: "Sense 8",
  age: "20",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/sense8.jpg"
  )

the100 = Recommandation.create!(
  name: "The 100",
  age: "20",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/the100.jpg"
  )

theOA = Recommandation.create!(
  name: "The OA",
  age: "20",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/theOA.jpg"
  )

sabrina = Recommandation.create!(
  name: "Sabrina",
  age: "20",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/sabrina.png"
  )

patpatrouille = Recommandation.create!(
  name: "PatPatrouille",
  age: "10",
  genre: "Police",
  origine: "UE",
  image: "recommandations/patpatrouille.jpeg"
  )

robocar = Recommandation.create!(
  name: "Robocar",
  age: "10",
  genre: "Police",
  origine: "UE",
  image: "recommandations/robocar.jpeg"
  )

dora = Recommandation.create!(
  name: "Dora l'Exploratrice",
  age: "10",
  genre: "Police",
  origine: "UE",
  image: "recommandations/dora.jpg"
  )

leclubdes5 = Recommandation.create!(
  name: "Le club des 5",
  age: "10",
  genre: "Police",
  origine: "UE",
  image: "recommandations/leclubdes5.jpg"
  )

peppapig = Recommandation.create!(
  name: "Peppa Pig",
  age: "10",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/peppapig.png"
  )

zinzins = Recommandation.create!(
  name: "les Zinzins de l'espace",
  age: "10",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/zinzin.jpg"
  )

trotro = Recommandation.create!(
  name: "Trotro",
  age: "10",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/trotro.jpg"
  )

lapinscretins = Recommandation.create!(
  name: "Les lapins crétins",
  age: "10",
  genre: "Comédie",
  origine: "UE",
  image: "recommandations/lapincretins.jpg"
  )

wakfu = Recommandation.create!(
  name: "wakfu",
  age: "10",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/wakfu.jpg"
  )

martinmatin = Recommandation.create!(
  name: "Martin Matin",
  age: "10",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/martinmatin.jpg"
  )

dragons = Recommandation.create!(
  name: "Dragons",
  age: "10",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/dragons.png"
  )

tintin = Recommandation.create!(
  name: "Tintin",
  age: "10",
  genre: "Sci-fi",
  origine: "UE",
  image: "recommandations/tintin.jpg"
  )

tortueninja = Recommandation.create!(
  name: "Tortues Ninjas",
  age: "10",
  genre: "Police",
  origine: "US",
  image: "recommandations/tortuesninjas.jpg"
  )

batman = Recommandation.create!(
  name: "Batman",
  age: "10",
  genre: "Police",
  origine: "US",
  image: "recommandations/batman.jpg"
  )

pyjamasks = Recommandation.create!(
  name: "Pyjamasks",
  age: "10",
  genre: "Police",
  origine: "US",
  image: "recommandations/pyjamask.png"
  )

piccou = Recommandation.create!(
  name: "Picsou",
  age: "10",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/picsou.jpeg"
  )

spiderman = Recommandation.create!(
  name: "Spiderman",
  age: "10",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/spiderman.1jpeg"
  )

octonautes = Recommandation.create!(
  name: "Les Octonautes",
  age: "10",
  genre: "Comédie",
  origine: "US",
  image: "recommandations/octonautes.jpg"
  )

ben10 = Recommandation.create!(
  name: "Ben 10",
  age: "10",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/ben10.jpeg"
  )

ironman = Recommandation.create!(
  name: "ironman",
  age: "10",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/ironman.jpg"
  )

lego = Recommandation.create!(
  name: "Lego",
  age: "10",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/lego.jpg"
  )

superman = Recommandation.create!(
  name: "Superman",
  age: "10",
  genre: "Sci-fi",
  origine: "US",
  image: "recommandations/superman.jpg"
  )

luther = Recommandation.create!(
  name: "Luther",
  age: "20",
  genre: "Police",
  origine: "US",
  image: "recommandations/luther.jpg"
  )
