# Exercise

array=[
{id: "38fj8d900", city: 'Hamilton', events: [{date: '2017-01-01', attendees: 100}, {date: '2016-12-31', attendees: 60}]},
{id: "39fo837y7", city: 'Toronto', events: [{date: '2017-03-30', attendees: 3000}, {date: '2017-07-07', attendees: 2500}, {date: '2017-02-04', attendees: 900}]},
{id: "58uj8d800", city: 'Montreal', events: [{date: '2017-08-10', attendees: 250}]},
{id: "48hn8d900", city: 'Kingston', events: [{ date: '2015-04-16', attendees: 45}]}
]

# Write code to display this data in the following format:

# Hamilton
# ------------
# Date: 2017-01-01, 100 people 
# Date: 2016-12-31, 60 people 

# Toronto
# ------------
# Date: 2017-03-30, 3000 people 
# Date: 2017-07-07, 2500 people 
# Date: 2017-02-04, 900 people 

# Montreal
# ------------

array.each do |n| #Run through each hash in array
    puts n[:city] #Print city name in hash
    puts "-------------" #Print dotted line to seperate
    n[:events].each do |x| #Run through events in the hash
        puts "Date: #{x[:date]}, #{x[:attendees]} people" #Print the date and number of attendees for each event
    end
    puts "" #Add a line break after each hash
end