class Project < ActiveRecord::Base
    #belongs to rescue & add rescue ID to seed data?
    has_many :project_animals
    has_many :project_volunteers 
    has_many :animals, through: :project_animals
    has_many :volunteers, through: :project_volunteers 

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