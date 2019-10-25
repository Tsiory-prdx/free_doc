# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |index|
    c = City.create(city_name: "City#{index}")
    s = Specialty.create(specialty_name: "specialty#{index}")
    d = Doctor.create(first_name: "Prenom_Doc#{index}", last_name: "Nom_Doc#{index}", zip_code: "Zip_code N_#{index}", city: c, specialty: s)
    p = Patient.create(first_name: "Prenom_Pat#{index}", last_name: "Nom_Pat#{index}", city: c)
    Appointment.create(date: "#{rand(2017..2019)}-#{rand(1..12)}-#{rand(1..28)}", doctor: d, patient: p, city: c)    
end