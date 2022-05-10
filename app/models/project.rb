class Project < ActiveRecord::Base
    belongs_to :project_animal
    belongs_to :project_volunteer 
    # has_many :animals, through: :project_animal
    # has_many :volunteers, through: :project_volunteer 

    def project_volunteer_count
        project_volunteer_arr = []
        self.project_volunteers.each do |pv|
            project_volunteer_arr << pv 
        end
    end
    
    def all_project_volunteer_names
         self.project_volunteers.map do |project_volunteer|
             project_volunteer.name
         end
    end

    def volunteers_count
        self.volunteers.count
    end

    def all_project_volunteer_names
        self.volunteers.map do |vol|
            vol.name
        end
    end

    def self.show_all
        Project.all.map do |p|
            puts p.title
        end 
    end
    def self.show_count
        Project.count
    end
    #add a project
    #update a project
    #delete a project
end