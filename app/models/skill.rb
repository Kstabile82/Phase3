class Skill < ActiveRecord::Base
    has_many :volunteer_skills
    has_many :volunteers, through: :volunteer_skills

    #List all the skills
    #Add a skill
    
end
