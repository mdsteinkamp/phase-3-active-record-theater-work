Role.destroy_all
Audition.destroy_all

Role.create(character_name: "Mickey")
Audition.create(actor: "vin d", location: "hollywood", phone: 800, hired: false, role_id: Role.first.id)
Audition.create(actor: "leo dicap", location: "malibu", phone: 999, hired: false, role_id: Role.first.id)
Audition.create(actor: "brad p", location: "santa monica", phone: 123, hired: false, role_id: Role.first.id)

puts "DONE SEEDING"