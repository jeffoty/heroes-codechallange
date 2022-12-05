Hero.destroy_all
Power.destroy_all
HeroPower.destroy_all

hero1 = Hero.create(name: "Clerk", supername: "Superman")
hero2 = Hero.create(name: "Uzemaki", supername: "Naruto")
hero3 = Hero.create(name: "Barry", supername: "The Flash")

power1 = Power.create(name: "Flight", description: "Able to fly")
power2 = Power.create(name: "Sharingan", description: "Able to perform different jitsu")
power3 = Power.create(name: "Speed", description: "Able to run at super speed")


HeroPower.all.each do |heropower|
    rand(1..5).times do
    power = Power.find(Power.pluck(:id).sample)
    HeroPower.create(strength: "Average", hero_id: 3, power_id: 3)
  end
end