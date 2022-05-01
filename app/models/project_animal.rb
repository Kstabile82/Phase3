class Project_Animal < ActiveRecord::Base
    has_many :animals
    has_many :projects
    has_many :project_volunteers, through: :projects
    has_many :volunteers, through: :project_volunteers 

   #finds all the projects a specific animal is listed under
   def self.animal_projects(animal)
      proj_animal_match = Project_Animal.where(animal_id: animal.id)
       proj_animal_match.map do |p|
        p_match = Project.find_by(id: p.project_id)
            p_match.title
       end
     # Animal.find_by(id: proj_animal_match.animal_id) 
   end

   #finds all the animals under a specific project
   def self.list_animals(project)
      proj = Project_Animal.where(project_id: project.id)
        proj.map do |p|
        p_animal = Animal.find_by(id: p.animal_id)
         p_animal.title
       end
    end

    #find count of unique animals with project_id of ?
    def self.count_animals_on_proj(project)
        proj = Project_Animal.where(project_id: project.id)
        #remove duplicates
        proj.length
    end

    def self.count_projects_of_animal(animal)
        cute_animal = Project_Animal.where(animal_id: animal.id)
        #remove duplicates
        cute_animal.length
    end

=begin
   # add animal_id & project_id pair
   self.create(animal_id: arg1, project_id: arg2)
   post 

   # delete animal_id & project_id pair 
   find_by(animal_id: arg1 && project_id: arg2)
   delete 

   delete all where project_id: x
   delete all where there are no project or animal matches
   delete all where animal_id: x
=end

end