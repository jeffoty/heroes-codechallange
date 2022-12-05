Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all

hero1 = Hero.create(name: "Clerk", supername: "Superman")
hero2 = Hero.create(name: "Uzemaki", supername: "Naruto")
hero3 = Hero.create(name: "Barry", supername: "The Flash")

power1 = Power.create(name: "Flight", description: "Able to fly")
power2 = Power.create(name: "Sharingan", description: "Able to perform different jitsu")
power3 = Power.create(name: "Speed", description: "Able to run at super speed")


HeroPower.create(strength: "Average", hero_id: 1, power_id: 1)
HeroPower.create(strength: "Average", hero_id: 2, power_id: 2)
HeroPower.create(strength: "Average", hero_id: 3, power_id: 3)   