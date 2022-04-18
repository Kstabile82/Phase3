class Animal < ActiveRecord::Base
    has_many :projects
    has_many :volunteers, through: :projects
    has_many :rescues, through: :projects
    #list all animals
    #list only adoptable animals
    #list only adopted animals
    #list all adoptable animals by type
    #list all adoptable animals by sex & type
    #list all adoptable animals by sex, type & breed
    #list all adoptable animals by sex, type & breed & age
    #find the project a specific animal is from
    #find the volunteers working on a project with this animal
    #find the animal that's been there the longest (order by created date)
    #find the newest animal (order by created date)

end
