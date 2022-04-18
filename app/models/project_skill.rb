class Project_Skill < ActiveRecord::Base
    belongs_to :project

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
