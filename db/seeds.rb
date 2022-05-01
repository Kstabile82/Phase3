puts "🌱 Seeding spices..."

Rescue.create(
    name: "AARR", 
    location: "Queens, NY"
    )
Rescue.create(
    name: "LIRRG", 
    location: "Long Island, NY"
    )
Project.create(
    title: "Lexi Fundraiser", 
    proj_type: "Fundraiser"
    )
Project.create(
    title: "Hamilton Beach Rescue", 
    proj_type: "Rescue"
    )
Project.create(
    title: "Facebook Easter Campaign", 
    proj_type: "Social Media Post"
    )
Project.create(
    title: "April Event", 
    proj_type: "Event"
    )
Volunteer.create(
    name: "Karina", 
    location: "Long Island", 
    )
Volunteer.create(
    name: "Michelle", 
    location: "Long Island", 
    )
Volunteer.create(
    name: "Vivian", 
    location: "Queens, NY", 
    )
Animal.create(
    name: "Buddy", 
    sex: "Male", 
    color: "White", 
    adoption_status: false 
    )
Animal.create(
    name: "Giselle", 
    sex: "Female", 
    color: "Brown & White", 
    adoption_status: false 
    )
Animal.create(
    name: "Dexter", 
    sex: "Male", 
    color: "Brown & White", 
    adoption_status: true 
    )
Project_Animal.create(
    project_id: 38,
    animal_id: 1
)
Project_Animal.create(
    project_id: 40,
    animal_id: 2
)
Project_Animal.create(
    project_id: 39,
    animal_id: 1
)
Project_Animal.create(
    project_id: 40,
    animal_id: 1
)
Project_Volunteer.create(
    project_id: 38, 
    volunteer_id: 3
)
Project_Volunteer.create(
    project_id: 39, 
    volunteer_id: 1
)
Project_Volunteer.create(
    project_id: 39, 
    volunteer_id: 2
)
Project_Volunteer.create(
    project_id: 40, 
    volunteer_id: 1
)
Project_Volunteer.create(
    project_id: 40, 
    volunteer_id: 3
)
puts "✅ Done seeding!"
