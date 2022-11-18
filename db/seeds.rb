# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin ===================================================================================================

Admin.where(email: "kyudev@protonmail.com", password: "password").first_or_create

puts "1st Admin created"

# Episode ==================================================================================================

Episode.destroy_all

episode_1 = Episode.create!(
  title: "1# Vers la fin du salariat ? Entretien avec Denis Pennel",
  description: "Explosion des freelances, des digital nomades, crises conjoncturelles, perte de confiance : les entreprises ont de plus en plus de mal à recruter et à fidéliser les talents. Et pour cause, celles-ci sont de plus en plus boudées. On leur préfère l’autonomie et la liberté de l’entrepreneur. Mais tout le monde ne souhaite pas ou ne peut pas lancer son activité !
  Alors, va-t-on vers la fin du salariat et de l’entreprise tel qu’on les connaît aujourd’hui ? Quelle nécessaire évolution doit prendre l’entreprise pour durer ?
  Pour Denis Pennel, les attentes des salariés ont changé et « l’entreprise doit revoir son contrat avec les individus ».
  Rencontre avec Denis Pennel, spécialiste du marché du travail, conférencier, auteur et Directeur de la World Employement Confederation.",
  publication_date: Date.new(2021,4,30),
  link_url: "https://soundcloud.com/user-23653367/3-specialiste-du-futur-du-travail-un-metier-davenir"
)
puts "#{episode_1.title} was successfully created!"

episode_2 = Episode.create!(
  title: "2# Comment aborder le futur du travail ? Entretien avec Laetitia Vitaud",
  description: "Le futur du travail est-il un sujet à la mode ? De plus en plus décortiqué, analysé et étudié, ce sujet occupe une place grandissante dans les médias et dans les discussions.
  Laetitia Vitaud, spécialiste du Futur du travail, écrivaine, autrice de l’excellent livre “Du labeur à l’ouvrage”, et créatrice du média Nouveau départ, nous partage ses réflexions. Elle nous livre ses conseils sur la quête de sens et sur la place grandissante que vont occuper les métiers de proximité dans l’avenir. Des métiers aujourd’hui essentiellement occupés par des femmes.
  Quel est donc la place des femmes dans l’avenir du travail ? Et comment les hommes peuvent-il contribuer à l’avénement d’une société du travail plus inclusive ?",
  publication_date: Date.new(2021,4,30),
  link_url: "https://soundcloud.com/user-23653367/1-vers-la-fin-du-salariat-avec-denis-pennel"
)
puts "#{episode_2.title} was successfully created!"

episode_3 = Episode.create!(
  title: "3# Dessiner son job sur-mesure, avec Nathalie Calvo",
  description: "Serial reconvertie et aujourd’hui slasheuse assumée, Nathalie cumule différentes activités. Elle est urbaniste, militante, accompagnatrice de personnes en évolution de vie, réalisatrice d’un documentaire. A travers ses expériences et son vécu, nous découvrons comment elle capitalise sur toutes ces activités passées et présentes pour donner du relief à son activité principale, et à sa passion : la ville durable.
  Dans cet épisode, Nathalie revient sur son parcours, ses forces et sa détermination à réaliser ses rêves. Une émission inspirante et plein de conseils pour dessiner son job et sa vie sur-mesure !",
  publication_date: Date.new(2021,4,30),
  link_url: "https://soundcloud.com/user-23653367/3-dessiner-son-job-sur-mesure-avec-nathalie-calvo"
)
puts "#{episode_3.title} was successfully created!"


