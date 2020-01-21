

#soldiers

soldier1 = Soldier.create(name: "Bill", age: 20, rank: "PVT", rating: 3.0)
soldier2 = Soldier.create(name: "Theresa", age: 25, rank: "SGT", rating: 4.9)
soldier3 = Soldier.create(name: "Julius", age: 28, rank: "SGT", rating: 4.3)

#awards

award1 = Award.create(name: "Good Service", location: "Earth")
award2 = Award.create(name: "Bravery", location: "Mars")
award3 = Award.create(name: "Noble Knight", location: "Jupiter")

#missions

mission1 = Mission.create(name: "Interplanetary", location: "Mars", award_id: 2, soldier_id: 1)
mission2 = Mission.create(name: "Conus", location: "Earth", award_id: 1, soldier_id: 3)
mission3 = Mission.create(name: "Oconus", location: "Jupiter", award_id: 3, soldier_id: 2)