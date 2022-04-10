class Volunteer_Skill < ActiveRecord::Base
    belongs_to :volunteer
    belongs_to :skill 

    #Find all volunteers with a certain skill
    #Find which skills a certain volunteer has
    #Add or remove volunteer-skill pairs
    
end
