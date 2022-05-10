class Animal < ActiveRecord::Base
    belongs_to :rescue
    has_many :project_animals
    # has_many :project_volunteers, through: :projects
    # has_many :volunteers, through: :project_volunteers
   
    def self.all_animal_names
        Animal.all.map do |animal|
            animal.name
        end
    end
    def self.delete_by_id(id)
        animl = Animal.find(id)
        animl.destroy
    end 
    def update_adoption_status(status)
        self.update(adoption_status: status) 
    end
    def self.animal_count
        Animal.count
     end
    def self.longest_animal
        Animal.all.order(:created_at).first
    end
    def self.newest_animal
        Animal.all.order(:created_at).last
    end
    def self.see_adoptables
        Animal.where(adoption_status: false)
    end
    def self.new_animal(name, sex, breed, kind, age, rescue_id)
        Animal.create(name: name, sex: sex, breed: breed, kind: kind, rescue_id: rescue_id, age: age)
    end
    def self.find_kind(arg)
        Animal.where(kind: arg)
    end
    def self.find_kind_sex(arg, arg2)
        animl = Animal.where(kind: arg)
        animl.where(sex: arg2)
    end  
    #find the projects a specific animal is from
    def self.find_proj_by_animal(a_id)
        proj_an = Project_Animal.where(animal_id: a_id)
        proj_an.map do |pa|
            pa.project_id
          Project.where(id: pa.project_id)
        end
    end
    #find the volunteers working with this animal through volunteer_projects -> projects -> animal_projects
        #use above method, then find project_volunteers that have the same project Id, and find volunteers that match the volunteer Id
end
