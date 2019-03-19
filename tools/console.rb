require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("Happy Cult", "Denver", 1993, "We are happy!")
cult2 = Cult.new("Sad Cult", "LA", 1973, "Get SAD!")
cult3 = Cult.new("No Cult", "NYC", 2002, "NO! NO! NO! NO!")
cult4 = Cult.new("YAY Cult", "Denver", 1933, "YAY! YAY!")
cult5 = Cult.new("Red Cult", "Seattle", 1993, "RED!")

john = Follower.new("John", 29, "I love cults")
alice = Follower.new("Alice", 73, "Cults are my fave")
mary = Follower.new("Mary", 43, "Cults are my fave")
george = Follower.new("George", 73, "Cults are my fave")

cult1.recruit_follower(john)
cult1.recruit_follower(alice)
cult2.recruit_follower(mary)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
