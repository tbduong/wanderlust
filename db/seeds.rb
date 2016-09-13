# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LOCATIONS = [
   {
       city: "Seattle",
       country: "United States"
   },
   {
       city: "Los Angeles",
       country: "United States"
   },
   {
       city: "New York",
       country: "United States"
   },
   {
       city: "Miami",
       country: "United States"
   },
   {
       city: "Paris",
       country: "France"
   },
   {
       city: "London",
       country: "United Kingdom"
   },
   {
       city: "Dublin",
       country: "Ireland"
   },
   {
       city: "Cancun",
       country: "Mexico"
   },
   {
       city: "Santiago",
       country: "Chile"
   },
   {
       city: "Vancouver",
       country: "Canada"
   },
   {
       city: "Rio de Janiero",
       country: "Brazil"
   },
   {
       city: "Hawaii",
       country: "United States"
   },
   {
       city: "Patagonia",
       country: "Chile"
   },
   {
       city: "Buenos Aires",
       country: "Argentina"
   },
   {
       city: "Rome",
       country: "Italy"
   },
   {
       city: "Florence",
       country: "Italy"
   }
 ]

 p Location.create(LOCATIONS)
