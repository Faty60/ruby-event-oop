# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie@gmail.com", 31)
kadi = User.new("kadi@gmail.com", 33)
pierre = User.new("pierre@gmail.com", 45)
ramata = User.new("assata@gmail.com", 32)
diama = User.new("diama@gmail.com", 32)
binta = User.new("sidib.ftou2@gmail.com", 31)



#my_event = Event.new(Time.parse("2021-04-26 16:30"), 30, "standup quotidien", ["julie@gmail.com", "kadi@gmail.com", "pierre@gmail.com"])
#user1 = User.find_by_email("julie@gmail.com")


#puts my_event.to_s
puts kadi.email
user1 = User.find_by_email("julie@gmail.com")
puts "Voici l'age du User trouvé : #{user1.age}"

