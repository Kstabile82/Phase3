class Project < ActiveRecord::Base
    belongs_to :rescue 
    has_many :volunteers, through: :rescue
    has_many :animals
    has_many :skills, through: :volunteers 

    #show all projects and their animals
    #find which animals are from a specific project
    #find which volunteers are on a specific project
    #add/delete volunteers to a specific project -- do i need a project_volunteer join table?
    #add/delete animals to a specific project -- do i need an animal_project join table? 
    
end