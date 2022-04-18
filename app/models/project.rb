class Project < ActiveRecord::Base
    has_many :volunteers 
    has_many :rescues
    has_many :animals
    has_many :project_skills
    has_many :volunter_skills, through: :volunteers

    #show all projects and their animals
    #find which animals are from a specific project
    #find which volunteers are on a specific project
    #add/delete volunteers to a specific project -- do i need a project_volunteer join table?
    #add/delete animals to a specific project -- do i need an animal_project join table? 
    
end