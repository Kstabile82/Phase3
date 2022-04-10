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
    rescue_id: 1
    )

Volunteer.create(
    name: "Michelle", 
    location: "Long Island", 
    rescue_id: 1
    )

Volunteer.create(
    name: "Vivian", 
    location: "Queens, NY", 
    rescue_id: 1
    )

Animal.create(
    name: "Buddy", 
    sex: "Male", 
    volunteer_id: 1, 
    color: "White", 
    project_id: 1, 
    adoption_status: false 
    )

Animal.create(
    name: "Giselle", 
    sex: "Female", 
    volunteer_id: 3, 
    color: "Brown & White", 
    adoption_status: false 
    )

Skill.create(
    skill: "Social Media",
)
Skill.create(
    skill: "Fostering",
)
Skill.create(
    skill: "Fundraising",
)
Skill.create(
    skill: "Social Media",
)
Skill.create(
    skill: "Social Media",
)

Volunteer_Skill.create(
    skill_id: 1,
    volunteer_id: 1
)

Volunteer_Skill.create(
    skill_id: 2,
    volunteer_id: 3
)

Volunteer_Skill.create(
    skill_id: 1,
    volunteer_id: 3
)
Volunteer_Skill.create(
    skill_id: 1,
    volunteer_id: 2
)
Volunteer_Skill.create(
    skill_id: 3,
    volunteer_id: 2
)
Volunteer_Skill.create(
    skill_id: 4,
    volunteer_id: 1
)
puts "✅ Done seeding!"
