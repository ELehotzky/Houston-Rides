#Users

ray = User.create(name: "", username: "", email: "", password: "", profile_pic: "")
alex = User.create(name: "Alex", username: "bosskey", email: "blah@gmail.com", password: "pass", profile_pic: "bear")
erica = User.create(name: "", username: "", email: "", password: "", profile_pic: "")

#Types

mountain = Type.create(type: "Mountain")
road = Type.create(type: "Road")
hybrid = Type.create(type: "Hybrid")
bmx = Type.create(type: "BMX")
touring = Type.create(type: "Touring")

#trails

memorial = Trail.create(name: "Memorial Park", location: "6501 Memorial Dr. Houston, TX", description: "Expansive city park with lush natural features.", rating: 4.7, photo: "img", distance: 5, difficulty: 5, type: mountain)
buffalo = Trail.create(name: "Buffalo Bayou", location: "1800 Allen Pkwy. Houston TX", description: "Winding, 124-acre green space featuring views of the Houston skyline.", rating: 4.6, photo: "img", distance: 10, difficulty: 3, type: hybrid)
brays = Trail.create(name: "Brays Bayou", location: "9601 Braes Bayou", description: "Paved path along the bayou with several public parks.", rating: , photo: "img", distance: 33.8, difficulty: 4, type: hybrid)
herman = Trail.create(name: "Herman Brown", location: "400 Mercury Dr. Houston, TX", description: "Moderately trafficked loop trail featuring a lake, good for all skill levels.", rating: 4, photo: "img", distance: 7.6, difficulty: 1, type: hybrid)

#events

critical = Event.create(name: "Critical Mass", date: (2018, 08, 30), location: "", distance: , description: "Casual bike ride starting from downtown Houston and going wherever", website: "", sponsor: "Crticial Mass Houston", price: 0, type: road
critical = Event.create(name: "", date: "", location: "", distance: , description: "", website: "", sponsor: "", price: "", type: )
critical = Event.create(name: "", date: "", location: "", distance: , description: "", website: "", sponsor: "", price: "", type: )
critical = Event.create(name: "", date: "", location: "", distance: , description: "", website: "", sponsor: "", price: "", type: )

#bikes

jamis = Bike.create(make: "", model: "", year: "", type: , photo: "img", modification: false, user: , type: )
jamis = Bike.create(make: "", model: "", year: "", type: , photo: "img", modification: false, user: , type: )
jamis = Bike.create(make: "", model: "", year: "", type: , photo: "img", modification: false, user: , type: )
jamis = Bike.create(make: "", model: "", year: "", type: , photo: "img", modification: false, user: , type: )

#ratings



#sign_ups






