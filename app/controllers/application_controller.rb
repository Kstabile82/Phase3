class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Welcome to my animal rescue app!" }.to_json
  end

 get "/rescues" do
  rescu = Rescue.all 
  rescu.to_json(include: [
    :animals,
    :volunteers,
    :projects
  ])
 end

get '/rescues/:id' do 
  resq = Rescue.find(params[:id])
   resq.to_json(include: [{ animals: { include: :project_animals } },
   { volunteers: { include: :project_volunteers } },
   { projects: { include: [ :project_volunteers, :project_animals ] } } 
 ])
end

 get '/rescues/:id/volunteers' do
  resq = Rescue.find(params[:id])
  rv = resq.volunteers
  rv.to_json(include: :project_volunteers)
 end

 get '/rescues/:id/animals' do
  resq = Rescue.find(params[:id])
  ra = resq.animals
  ra.to_json(include: :project_animals)
 end

 get '/rescues/:id/projects' do
  resq = Rescue.find(params[:id])
  rp = resq.projects
  rp.to_json(include: [ :project_volunteers, :project_animals, :volunteers, :animals ])
  # rp.to_json(include: :project_volunteers) //get rid of Project-volunteers
 end

 get '/animals/:id' do
  resq = Animal.find(params[:id])
  resq.to_json
 end

 get '/projects/:id' do 
  proj = Project.find(params[:id])
  proj.to_json(include: [ :project_volunteers, :project_animals ])
 end

 get '/projects/:id/project_volunteers' do 
  proj = Project.find(params[:id])
  pv = proj.project_volunteers
  pv.to_json
 end

 get '/volunteers/:id' do
  vol = Volunteer.find(params[:id])
  vol.to_json(include: [ :project_volunteers, :projects ])
 end

 get '/rescues/:id/volunteers/:volunteer_id' do
  resq = Rescue.find(params[:id]).volunteers.find(params[:volunteer_id])
  resq.to_json
 end
 
 get '/rescues/:id/projects/:project_id' do
  resq = Rescue.find(params[:id]).projects.find(params[:project_id])
  resq.to_json(include: [ :project_volunteers, :project_animals ])
 end

 get '/rescues/:id/projects/:project_id/project_volunteers' do
  resq = Rescue.find(params[:id]).projects.find(params[:project_id]).project_volunteers
  resq.to_json
 end

#  get '/project_animals' do 
#   ProjectAnimals.all.to_json
#  end

#  get '/project_volunteers' do 
#   ProjectVolunteer.all.to_json
#  end

 get '/project_volunteers/:id' do
  projvol = ProjectVolunteer.find(params[:id])
  projvol.to_json
 end

 get '/project_animals/:id' do
  projan = ProjectAnimal.find(params[:id])
  projan.to_json
 end

 post "/rescues" do
  rescu = Rescue.create(name: params[:name], location: params[:location])
  rescu.to_json
 end

 post '/project_animals' do
  projAn = ProjectAnimal.create(project_id: params[:project_id], animal_id: params[:animal_id])
  projAn.to_json
 end

 post '/project_volunteers' do
  projVol = ProjectVolunteer.create(project_id: params[:project_id], volunteer_id: params[:volunteer_id])
  projVol.to_json
 end

post '/animals' do
  anim = Animal.create(age: params[:age], rescue_id: params[:rescue_id], name: params[:name], sex: params[:sex], breed: params[:breed], kind: params[:kind], color: params[:color], adoption_status: params[:adoption_status], project_animals: params[:project_animals])
  anim.to_json
end

patch '/animals/:id' do
  animalUpdate= Animal.find(params[:id])
  animalUpdate.update(params[:updatedAnimal])
  animalUpdate.to_json
 end

 post '/projects' do
  proj = Project.create(title: params[:title], rescue_id: params[:rescue_id], proj_type: params[:proj_type], project_volunteers: params[:project_volunteers], project_animals: params[:project_animals])
  proj.to_json
end

patch '/projects/:id' do
  projectUpdate= Project.find(params[:id])
  projectUpdate.update(params[:updatedProject])
  projectUpdate.to_json
 end

 post '/volunteers' do
  vol = Volunteer.create(name: params[:name], location: params[:location], talents: params[:talents], rescue_id: params[:rescue_id], project_volunteers: params[:project_volunteers])
  vol.to_json
end

patch "/rescues" do
  rescueUpdate= Rescue.find(params[:id])
  rescueUpdate.update(params[:updatedRescue])
  rescueUpdate.to_json
 end

patch '/volunteers/:id' do
  volUpdate= Volunteer.find(params[:id])
  volUpdate.update(params[:updatedVolunteer])
  volunteerUpdate.to_json
 end

 delete '/rescues/:id' do 
  resc = Rescue.find(params[:id])
  resc.destroy
  resc.to_json
 end

 delete '/animals/:id' do
  an = Animal.find(params[:id])
  an.destroy
  an.to_json
 end

 delete '/projects/:id' do
  proj = Project.find(params[:id])
  proj.destroy
  proj.to_json
 end

 delete '/volunteers/:id' do
  vol = Volunteer.find(params[:id])
  vol.destroy
  vol.to_json
 end

 delete '/project_volunteers/:id' do
  projVol = ProjectVolunteer.find(params[:id])
  projVol.destroy
  projVol.to_json
 end

 delete '/project_animals/:id' do
  projAn = ProjectAnimal.find(params[:id])
  projAn.destroy
  projAn.to_json
 end

end
