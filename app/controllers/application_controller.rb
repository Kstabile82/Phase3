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
  rp.to_json(include: [ :project_volunteers, :project_animals ])
 end

 get '/animals/:id' do
  resq = Animal.find(params[:id])
  resq.to_json
 end

 get '/rescues/:id/volunteers/:volunteer_id' do
  resq = Rescue.find(params[:id]).volunteers.find(params[:volunteer_id])
  resq.to_json
 end
 
 get '/rescues/:id/projects/:project_id' do
  resq = Rescue.find(params[:id]).projects.find(params[:project_id])
  resq.to_json
 end

#  post "/rescues" do
#   newRescue = Rescue.create(name: params[:name], location: params[:location])
#   newRescue.to_json
#  end
 
#  delete '/rescues/:id/animals/:animal_id' do
#   anim = Rescue.find(params[:id]).animals.find(params[:animal_id])
#   anim.destroy
#   anim.to_json
# end

# delete '/rescues/:id/volunteers/:volunteer_id' do
#   vol = Rescue.find(params[:id]).volunteers.find(params[:volunteer_id])
#   vol.destroy
#   vol.to_json
# end

# post '/rescues/:id/volunteers' do
#   vol = Volunteer.create(location: params[:location], name: params[:name], talents: params[:talents])
#   vol.to_json
# end

post '/animals' do
  anim = Animal.create(age: params[:age], rescue_id: params[:rescue_id], name: params[:name], sex: params[:sex], breed: params[:breed], kind: params[:kind], color: params[:color], adoption_status: params[:adoption_status], project_animals: params[:project_animals])
  anim.to_json
end

patch '/animals/:id' do
  animalUpdate= Animal.find(params[:id])
  animalUpdate.update(params[:updatedAnimal])
  animalUpdate.to_json
 end

# patch '/volunteers/:id' do
#   vol = Rescue.find(params[:id]).volunteers.find(params[:volunteer_id])
#   vol.update(location: params[:location], name: params[:name], talents: params[:talents])
#   vol.to_json
# end

end
