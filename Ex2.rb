# Exercise

ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]
           

# Each hash represents a voting ballot, with three names in 1st, 2nd, and 3rd place. A first place vote is worth 3 points, a 2nd place vote is worth 2 points, and a 3rd place vote is worth 1 point.

# For example, the first ballot {1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'} shows that this voter chose Smudge for first place, Tigger for 2nd, and Simba for 3rd. Smudge would be awarded 3 points, Tigger would be awarded 2 points, and Simba would be awarded 1 point.

# Tally up all the votes and determine who won.

def votes(array) #Create a method that takes an array as arguement
    total=[] #Create array to hold total votes
    array.each do |n| #Run through each hash in array
        3.times do 
            total<<n[1] #Add first choice to total three times
        end
        2.times do
            total<<n[2] #Add second choice to total two times
        end
        total<<n[3] #Add third choice to total one time
    end
    total.tally #Count how many times each is in total
end
p votes(ballots) #Print total votes for each