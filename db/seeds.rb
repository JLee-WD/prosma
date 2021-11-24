# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
  User.create(email: "test_user1@test.com", password: "test11", password_confirmation: "test11", first_name: "John", last_name: "User1", role: 1)
  User.create(email: "test_user2@test.com", password: "test11", password_confirmation: "test11", first_name: "Jack", last_name: "User2", role: 1)
  User.create(email: "test_user3@test.com", password: "test11", password_confirmation: "test11", first_name: "Alice", last_name: "User3", role: 1)
  User.create(email: "test_admin@test.com", password: "test11", password_confirmation: "test11", first_name: "Mr", last_name: "Admin", role: 3)
  puts "Users Created"
end

limbs = ["Arm", "Leg", "Hand", "Foot", "Eye"]

if Limb.count == 0
  limbs.each do |limb|
    Limb.create(name: limb)
  end
  puts "Limbs Created"
end

if Item.count == 0
  item1 = Item.create(title: "Enforcer Bio Arm vQ49-e1", description: "Enforcer robotic prosthesis provides active actuation during gait to improve the biomechanics of gait, including, among other things, stability, symmetry, or energy expenditure for amputees.", 
    price: 4690000, material: "Iridium", control_type: "Neuro-Linked Bionic", limb_id: 1, user_id: 1, quantity: 62)
  item1.picture.attach(
    io: File.open('../docs/img/arm1.jpg'),
    filename: 'arm1.jpg',
    content_type: 'image/jpg'
  )
  item2 = Item.create(title: "Kusanagi emPOWER vRx-965", description: "Enhanced Kisanagi osseo-integrated bionic leg features actuators directly driving the joints, and semi-active legs, which use small amounts of energy and a small actuator to change the mechanical properties of the leg but do not inject net positive energy into gait.", 
    price: 6150000, material: "Chromium", control_type: "Osseo-Integration", limb_id: 2, user_id: 1, quantity: 85)
  item2.picture.attach(
    io: File.open('../docs/img/leg1.jpg'),
    filename: 'leg1.jpg',
    content_type: 'image/jpg'
  )
  item2 = Item.create(title: "Copperhead MyoElectric Leg X-21R", description: "MyoElectric Copperhead titanium leg uses microprocessor is used to interpret and analyze signals from knee-angle sensors and moment sensors. The microprocessor receives signals from its sensors to determine the type of motion being employed by the amputee.", 
    price: 7640000, material: "Titanium", control_type: "Myoelectric", limb_id: 2, user_id: 2, quantity: 23)
  item2.picture.attach(
    io: File.open('../docs/img/leg2.jpg'),
    filename: 'leg2.jpg',
    content_type: 'image/jpg'
  )
  item2 = Item.create(title: "Sokudo Bionic Eye vK-09X", description: "Full eyeball and retinal prosthesis featuring a subretinal stimulator, an array of electrodes, that is placed beneath the retina in the subretinal space and receives image signals.", 
    price: 8450000, material: "Silicone Mesh", control_type: "Exo", limb_id: 5, user_id: 2, quantity: 4)
  item2.picture.attach(
    io: File.open('../docs/img/eye.png'),
    filename: 'eye.png',
    content_type: 'image/png'   
  )
  item2 = Item.create(title: "Sovereign xTremity Bio Hand Kr-48v", description: "14 different grip patterns and hand positions, the Sovereign makes it easier to perform any activity with ease. The force exerted by the prosthesis is directly controlled using a persons wrist, or the remaining portion of their hand, which makes movement and control feel very natural.", 
    price: 4360000, material: "Titanium", control_type: "Neuro-Linked Bionic", limb_id: 3, user_id: 3, quantity: 44)
  item2.picture.attach(
    io: File.open('../docs/img/hand2.jpg'),
    filename: 'hand2.jpg',
    content_type: 'image/jpg'  
  )
  item2 = Item.create(title: "Katana Challenger xT-83", description: "Katana uses complementing levers connected through pivots to create mechanically-powered push off. Combining 27° of ankle motion and significantly greater ankle power than conventional carbon fiber feet, it closely mimics regular biomechanics.", 
    price: 7990000, material: "Tritium", control_type: "Neuro-Linked Bionic", limb_id: 4, user_id: 3, quantity: 72)
  item2.picture.attach(
    io: File.open('../docs/img/foot.png'),
    filename: 'foot.png',
    content_type: 'image/png', 
  )
  puts "Items Created"
end