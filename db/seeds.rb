puts "🌱 Seeding spices..."

Rescue.create(
    name: "AARR", 
    location: "Queens, NY"
    )
Rescue.create(
    name: "LIRRG", 
    location: "Long Island, NY"
    )   
Animal.create(
    name: "Buddy", 
    sex: "Male", 
    color: "White", 
    adoption_status: false,
    rescue_id: "#{Rescue.first.id}"
    )
Animal.create(
    name: "Giselle", 
    sex: "Female", 
    color: "Brown & White", 
    adoption_status: false,
    rescue_id: "#{Rescue.first.id}"
    )
Animal.create(
    name: "Dexter", 
    sex: "Male", 
    color: "Brown & White", 
    adoption_status: true,
    rescue_id: "#{Rescue.first.id}"
    )

    Volunteer.create(
    name: "Karina", 
    location: "Long Island", 
    rescue_id: "#{Rescue.first.id}"
    )
Volunteer.create(
    name: "Michelle", 
    location: "Long Island", 
    rescue_id: "#{Rescue.first.id}"
    )
Volunteer.create(
    name: "Vivian", 
    location: "Queens, NY", 
    rescue_id: "#{Rescue.first.id}"
    )

Project_Animal.create(
    animal_id: "#{Animal.first.id}"

)
Project_Animal.create(
    animal_id: "#{Animal.first.id}"
)
Project_Volunteer.create(
    volunteer_id: "#{Volunteer.first.id}"
)
Project_Volunteer.create(
    volunteer_id: "#{Volunteer.second.id}"
)
Project_Volunteer.create(
    volunteer_id: "#{Volunteer.third.id}"
)
Project.create(
    title: "Lexi Fundraiser", 
    proj_type: "Fundraiser",
    project_animal_id: "#{Project_Animal.first.id}",
    project_volunteer_id: "#{Project_Volunteer.first.id}"

    )
Project.create(
    title: "Hamilton Beach Rescue", 
    proj_type: "Rescue",
    project_animal_id: "#{Project_Animal.first.id}",
    project_volunteer_id: "#{Project_Volunteer.first.id}"

    )
Project.create(
    title: "Facebook Easter Campaign", 
    proj_type: "Social Media Post",
    project_animal_id: "#{Project_Animal.first.id}",
    project_volunteer_id: "#{Project_Volunteer.second.id}"

    )
Project.create(
    title: "April Event", 
    proj_type: "Event",
    project_animal_id: "#{Project_Animal.first.id}",
    project_volunteer_id: "#{Project_Volunteer.first.id}"

    )

puts "✅ Done seeding!"
