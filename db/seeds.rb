# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Wedding.destroy_all
w1 = Wedding.create :bride_name => "Kate Lin", :groom_name => "Martin Boo", :love_story => "We have been dating for more than 3 years and now we are getting married! yay!!", :number_guests => 0, :date => "25 December 2015", :location => "56-58 York Street, Sydney, NSW 2000"

Image.destroy_all
i1 = Image.create :url => "http://stylearena.net/wp-content/uploads/2015/05/funny-animal-pictures1.jpg"
i2 = Image.create :url => "http://europeanvoluntaryservice.org/wp-content/uploads/2015/02/animals-puppies_00279304.jpg"
i3 = Image.create :url => "http://www.wallpics.in/wp-content/gallery/animal-01/03.jpg"


Guest.destroy_all
g1 = Guest.create :full_name => "Pretty Cat", :relationship => "Friend", :greeting => "Congrats!", :is_attending => true
g2 = Guest.create :full_name => "Ugly Man", :relationship => "Family", :greeting => "Enjoy your new life!", :is_attending => true
g3 = Guest.create :full_name => "Eileen Lee", :relationship => "Friend", :greeting => "Best wishes!!", :is_attending => false

