class Rescue < ActiveRecord::Base
     has_many :volunteers
     has_many :animals
     has_many :projects

     #has_many :project_animals
     #has_many :project_volunteers
     #has_many :volunteers, through: :project_volunteers
    #has_many :animals, through: :project_animals
   # has_many :projects, through: :project_animals
   # has_many :project_volunteers, through: :projects 
   # has_many :volunteers, through: :project_volunteers

    #count unique animals with rescue id of id
    def rescue_animal_count
     animal_arr = []
      self.animals.each do |each_animal|
         animal_arr << each_animal
        end
        return animal_arr.length
    end
   
    #find rescue by id
    def self.find_by_id(arg)
        Rescue.all.find_by(id: arg)
    end

    #show all of a rescue's animal names
    def rescue_animal_names
        animal_arr = []
        self.animals.each do |each_animal|
           animal_arr << each_animal.name 
          end
          return animal_arr
    end

    def rescue_volunteer_list
        self.volunteers 
    end

    #add a rescue
    #delete a rescue
    #update a rescue
    
end