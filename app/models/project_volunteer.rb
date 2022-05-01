class Project_Volunteer < ActiveRecord::Base
    has_many :projects
    has_many :volunteers
    has_many :project_animals, through: :projects
    has_many :animals, through: :project_animals 

  #finds all the projects a specific volunteer is listed under
  def self.volunteer_projects(volunteer)
    proj_vol_match = Project_Volunteer.where(volunteer_id: volunteer.id)
    proj_vol_match.map do |v|
      v_match = Project.find_by(id: v.project_id)
          v_match.title
    end
  # Volunteer.find_by(id: proj_vol_match.volunteer_id) 
  end

  #finds all the volunteers under a specific project
  def self.list_volunteers(project)
    proj = Project_Volunteer.where(project_id: project.id)
      proj.map do |p|
      p_vol = Volunteer.find_by(id: p.volunteer_id)
      p_volunteer.name
    end
  end
  
   #find count of unique volunteers with project_id of ?
   def self.count_volunteers_on_proj(project)
    proj = Project_Volunteer.where(project_id: project.id)
    #remove duplicates
    proj.length
end

def self.count_projects_of_volunteer(volunteer)
    vol_projects = Project_Volunteer.where(volunteer_id: volunteer.id)
    #remove duplicates
    vol_projects.length
end

=begin
   #add volunteer_id & project_id pair
   variable = self.create(volunteer_id: vol_id, project_id: proj_id)
   post variable  

   #delete volunteer_id & project_id pair
   variable = self.find_by(volunteer_id: ? && project_id: ?)
   delete variable 

   delete all where project_id: x
   delete all where there are no project or volunteer matches
   delete all where volunteer_id: x

   #show busiest volunteer w/most projects (which volunteer_id appears most?)
   vol_arr = []
   self.map do |pv|
    pv_vol = pv.volunteer_id 
    Volunteers.map do |v|
    if v.id == pv_vol 
        vol_arr << v 
        find out which volunteer appears most in the array 

   #show least busy volunteer w/fewest projects (which volunteer_id appears least?)
     same as above but find out which volunteer appears least in the array 

   #sort volunteers by how many project_volunteer/volunteer matches there are
=end

end

