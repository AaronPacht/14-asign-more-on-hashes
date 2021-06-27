# A gaming company has collected gaming status for a set of users who’s names are available in players array. 
# The data collected by the company is indicated by the gameData array. The data is required to be processed. 
# Create a method that accepts the data and process it in such a way that the method returns an array of hashes 
# where each hash represent a user who belong to the players array and each hash should have following 3 keys:
# name : player name
# games: is an array of hash where each hash 2 keys
# 			name: game name 
# 			status: status of the player for that particular game
# location: name of the location the player have played in.



players = ["Peter","Sree", "Sandra","Elton","Kmen","Evlyn","Kiwi"]

gameData = [ 
    {
      "csGo"=> [
        { "name"=> "Peter", "location"=> "Neverland", "status"=> "expert" },
        { "name"=> "Sree", "location"=> "Toronto", "status"=> "Awesome" },
        { "name"=> "Sandra", "location"=> "Neverland", "status"=> "newbie" },
        { "name"=> "Elton", "location"=> "Mumbai", "status"=> "Awesome" },
        { "name"=> "Kmen", "location"=> "Neverland", "status"=> "newbie" },
        { "name"=> "Evlyn", "location"=> "Zurich", "status"=> "expert" },
        { "name"=> "Kiwi", "location"=> "LA", "status"=> "expert" }
      ]
    },
    {
      "pubG"=> [
        { "name"=> "Peter", "location"=> "Toronto", "status"=> "expert" },
        { "name"=> "Sree", "location"=> "Alberta", "status"=> "Awesome" },
        { "name"=> "Sandra", "location"=> "Neverland", "status"=> "newbie" },
        { "name"=>"Elton", "location"=> "New Delhi", "status"=> "Awesome" },
        { "name"=> "Kmen", "location"=> "Neverland", "status"=> "newbie" },
        { "name"=> "Evlyn", "location"=> "Zurich", "status"=> "expert" },
        { "name"=> "Kiwi", "location"=> "Mexico", "status"=> "expert" }
      ]
    }
  ]

#output  
# [
#   {
#     "name"=> "Peter", 
#     "games"=> [{"name"=> "csGo", "status" =>"expert"},{"name"=>"pubG", "status"=>"expert"}], 
#     "location"=> ["Neverland","Toronto"]
#   },
#   {
#     "name"=> "Sree", 
#     "games"=>[{"name"=>"csGo", "status"=>"Awesome"},{"name"=>"pubG", "status"=>"Awesome"}], 
#     "location"=>["Toronto","Alberta"]
#   }
  # the array continues for all the remaining user.
# ]


def make_hash(name,array) #Method to make each hash that takes player name and data array as arguements
  hash={} #Hash to hold the info
  hash[:games]=[] #Array to hold the games
  hash[:location]=[] #Array to hold locations
  hash[:name]=name #Set name in hash as player name
  array.each do |m| #Run through array holding game hashes
    m.each do |o,q| #Run through game hashes
      q.each do |r| #Run through the array within each game
        r.each do |s,t| #Run through each player hash
          if t==name #Select hash with correct name
            hash[:games]<<{"name": o,"status": r["status"]} #Add hash with game name and status to games array
            hash[:location]<<r["location"] #Add location to location array
          end
        end
      end
    end
  end
  return hash #Return hash
end

array=[] #Array to hold player hashes
players.each do |a| #Run through players
    array<<make_hash(a,gameData) #Add player hash to array
end
puts array #Print array