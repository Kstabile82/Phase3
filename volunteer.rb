class Volunteer < ActiveRecord::Base
    belongs_to :rescue 
    has_many :projects, through: :rescue
    has_many :animals, through: :projects
    has_many :volunteer_skills
    has_many :skills, through: :volunteer_skills
    
   #get list of volunteer names
   #get list of all volunteers and their skills
   #get list of all volunteers and their projects
   #add a volunteer
   #update a volunteer's info
   #find the busiest volunteer with the most projects
   #find the least busy volunteer with fewest projects

end