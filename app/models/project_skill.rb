class Project_Skill < ActiveRecord::Base
    has_many :projects  
    has_many :project_skills, through: :projects 

    #List all the skills
    #Add a skill
    def volunteer_count
       self.volunteers.count
    end
    def all_volunteer_names
        self.volunteers.map do |volunteer|
            volunteer.name
        end
    end
end
