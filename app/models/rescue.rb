class Rescue < ActiveRecord::Base
    has_many :volunteers
    has_many :projects 
    has_many :animals, through: :projects

    #show all animals
    #show all projects
    #show all volunteers
    #find the rescue with the most animals
    #find the rescue with the most volunteers
    #find rescues in a certain location
    
end