class Animal < ActiveRecord::Base
    belongs_to :project
    has_many :volunteers, through: :project
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
