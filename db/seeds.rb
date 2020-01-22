

#soldiers

soldier1 = Soldier.create(name: "Bill", age: 20, rank: "PVT", rating: 3.0)
soldier2 = Soldier.create(name: "Theresa", age: 25, rank: "SGT", rating: 4.9)
soldier3 = Soldier.create(name: "Julius", age: 28, rank: "SGT", rating: 4.3)

#awards

award1 = Award.create(name: "Good Service", location: "Earth")
award2 = Award.create(name: "Bravery", location: "Mars")
award3 = Award.create(name: "Noble Knight", location: "Jupiter")

#missions

mission1 = Mission.create(name: "Interplanetary", location: "Mars", award_id: award2.id, soldier_id: soldier1.id)
mission2 = Mission.create(name: "Conus", location: "Earth", award_id: award1.id, soldier_id: soldier3.id)
mission3 = Mission.create(name: "Oconus", location: "Jupiter", award_id: award3.id, soldier_id: soldier2.id)