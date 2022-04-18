class Volunteer_Skill < ActiveRecord::Base
    belongs_to :volunteer

    def get_skill_name
        self.skill.skill 
    end

    def karina
        karina = Volunteer.find_by(name: "Karina")
        self.update(volunteer: karina)
    end

    #Find all volunteers with a certain skill
    #Find which skills a certain volunteer has
    #Add or remove volunteer-skill pairs
    
end
