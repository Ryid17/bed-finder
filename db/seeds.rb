# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Booking.destroy_all
Bed.destroy_all
User.destroy_all

User.create(email: "consumer@test.com", password: "123456", role: "consumer")
User.create(email: "provider@test.com", password: "123456", role: "provider")
bed = Bed.new(category: 'Dementia', user: User.first, ward: 'Helen', address: "Gatehouse Ln, Goddards Green, Hassocks BN6 9LE")
file = URI.open('https://d35cnulyv0pa6p.cloudfront.net/products/images/2017/23350/9264_evario_protega_2016_12_004.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Dementia', user: User.first, ward: 'Edith', address: "Butler's Green Rd, Haywards Heath RH16 4BE")
file = URI.open('https://cdn8.dissolve.com/p/D145_296_102/D145_296_102_1200.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Acute', user: User.first, ward: 'Barnsley', address: "Nevill Ave, Hove BN3 7HY")
file = URI.open('https://www.stiegelmeyer.com/fileadmin/_processed_/5/8/csm_9264_Evario_Intercontinental_45Grad_Model_2016_12_001_fein-01_44a3111076.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Acute', user: User.first, ward: 'Romeo', address: "Martyrs Ave, Crawley RH11 7EJ")
file = URI.open("https://img.medicalexpo.com/images_me/photo-g/68959-13682725.jpg")
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Autism', user: User.first, ward: 'Elizabeth', address: "14-18 New Church Rd, Hove BN3 4FH")
file = URI.open('https://blog.arjo.com/hs-fs/hubfs/Citadel_nurse_reposition.jpg?width=943&name=Citadel_nurse_reposition.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Autism', user: User.first, ward: 'George', address: "61A Cromwell Ave, Highgate, London N6 5HP")
file = URI.open('https://blog.arjo.com/hs-fs/hubfs/Citadel_nurse_reposition.jpg?width=943&name=Citadel_nurse_reposition.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'PTSD', user: User.first, ward: 'Joseph', address: "11-19 Lisson Grove, Marylebone, London NW1 6SH")
file = URI.open('https://www.linet.com/-/media/Media-Catalogue/photos/beds/eleganza-1/eleganza1_slide2.ashx?h=690&la=en&w=1920&hash=CF3262724A12D19DAD779795B5D8BE26FF29CEF1')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'PTSD', user: User.first, ward: 'Gregory', address: "Cherington Rd, Hanwell, London W7 3HL")
file = URI.open('https://www.linet.com/-/media/Media-Catalogue/photos/beds/eleganza-1/eleganza1_slide2.ashx?h=690&la=en&w=1920&hash=CF3262724A12D19DAD779795B5D8BE26FF29CEF1')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Rehabillitation', user: User.first, ward: 'Roxanne', address: "25 Vincent Dr, Birmingham B15 2FG")
file = URI.open('https://img.medicalexpo.com/images_me/photo-g/85931-14964625.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Rehabillitation', user: User.first, ward: 'Timothy', address: "The Oleaster, 6 Mindelsohn Way, Birmingham B15 2SY")
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71T2lZsnwSL._SL1146_.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save
bed = Bed.new(category: 'Dementia', user: User.first, ward: 'Simon', address: "21 Woodbourne Rd, Harborne, Birmingham B17 8BY")
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/71T2lZsnwSL._SL1146_.jpg')
bed.photo.attach(io: file, filename: 'seed-bed.jpg', content_type: 'image/jpg')
bed.save

