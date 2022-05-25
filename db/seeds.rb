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
Project.create(
        title: "Lexi Fundraiser", 
        proj_type: "Fundraiser",
        rescue_id: "#{Rescue.first.id}"
)
Project.create(
        title: "Hamilton Beach Rescue", 
        proj_type: "Rescue",
        rescue_id: "#{Rescue.first.id}"
    
)
Project.create(
        title: "Facebook Easter Campaign", 
        proj_type: "Social Media Post",
        rescue_id: "#{Rescue.first.id}"
)
Project.create(
        title: "April Event", 
        proj_type: "Event",
        rescue_id: "#{Rescue.first.id}"
)
ProjectAnimal.create(
    animal_id: "#{Animal.first.id}",
    project_id: "#{Project.first.id}"
)
ProjectAnimal.create(
    animal_id: "#{Animal.first.id}",
    project_id: "#{Project.second.id}"

)
ProjectVolunteer.create(
    volunteer_id: "#{Volunteer.first.id}",
)
ProjectVolunteer.create(
    volunteer_id: "#{Volunteer.second.id}",
)
ProjectVolunteer.create(
    volunteer_id: "#{Volunteer.third.id}",

)


puts "✅ Done seeding!"
