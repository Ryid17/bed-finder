# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Bed.destroy_all
User.destroy_all

User.create(email: "consumer@test.com", password: "123456", role: "consumer")
User.create(email: "provider@test.com", password: "123456", role: "provider")
Bed.create(category: 'Dimentia', user: User.first, ward: 'Helen', address: "Gatehouse Ln, Goddards Green, Hassocks BN6 9LE")
Bed.create(category: 'Dimentia', user: User.first, ward: 'Edith', address: "Butler's Green Rd, Haywards Heath RH16 4BE")
Bed.create(category: 'Acute', user: User.first, ward: 'Barnsley', address: "Nevill Ave, Hove BN3 7HY")
Bed.create(category: 'Acute', user: User.first, ward: 'Romeo', address: "Martyrs Ave, Crawley RH11 7EJ")
Bed.create(category: 'Autism', user: User.first, ward: 'Elizabeth', address: "14-18 New Church Rd, Hove BN3 4FH")
Bed.create(category: 'Autism', user: User.first, ward: 'George', address: "61A Cromwell Ave, Highgate, London N6 5HP")
Bed.create(category: 'PTSD', user: User.first, ward: 'Joseph', address: "11-19 Lisson Grove, Marylebone, London NW1 6SH")
Bed.create(category: 'PTSD', user: User.first, ward: 'Gregory', address: "Cherington Rd, Hanwell, London W7 3HL")
Bed.create(category: 'Rehabillitation', user: User.first, ward: 'Roxanne', address: "25 Vincent Dr, Birmingham B15 2FG")
Bed.create(category: 'Rehabillitation', user: User.first, ward: 'Timothy', address: "The Oleaster, 6 Mindelsohn Way, Birmingham B15 2SY")
Bed.create(category: 'Dimentia', user: User.first, ward: 'Simon', address: "21 Woodbourne Rd, Harborne, Birmingham B17 8BY")


