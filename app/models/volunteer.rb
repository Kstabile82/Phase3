class Volunteer < ActiveRecord::Base
    has_many :project_volunteers
    has_many :projects, through: :project_volunteers 
    has_many :project_animals, through: :projects
    has_many :animals, through: :project_animals

   #list all unique volunteers (add rescue ID to volunteers and update this to filter by rescue)
   def self.show_all
    Volunteer.all.map do |v|
       v.name
    end
   end

   #add a volunteer
     #self.create(), post 
   #update a volunteer
   #delete a volunteer
   #find the animals this volunteer works with 

end