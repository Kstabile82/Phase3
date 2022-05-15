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
    :volunteers
  ])
 end
#  get '/rescues/:id' do
#    resq = Rescue.find(params[:id])
#     resq.to_json(include: [
#       :animals,
#       :volunteers
#     ])
#  end

get '/rescues/:id' do
  resq = Rescue.find(params[:id])
   resq.to_json(include: [ 
    animals: { include: { project_animals: { include: :projects } } },
     volunteers: { include: { project_volunteers: { include: :projects } } }
   ]
   )
end

 get '/rescues/:id/volunteers' do
  resq = Rescue.find(params[:id])
  rv = resq.volunteers
  rv.to_json
 end

 get '/rescues/:id/animals' do
  resq = Rescue.find(params[:id])
  ra = resq.animals
  ra.to_json
 end

 get '/rescues/:id/volunteers/:id' do
  resq = Rescue.find(params[:id])
  rv = resq.volunteers
  resqvol = rv.find(params[:id])
  resqvol.to_json
 end

 get '/rescues/:id/animals/:id' do
  resq = Rescue.find(params[:id])
  ra = resq.animals
  resqan = ra.find(params[:id])
  resquan.to_json
 end

 patch '/rescues/:id/animals/:id' do
  resq = Rescue.find(params[:id])
  ra = resq.animals
  ra.to_json
 end

 post "/rescues" do
  newRescue = Rescue.create(name: params[:name], location: params[:location])
  newRescue.to_json
 end
 
 delete "/rescues/:id/animals" do
  anim = Animal.find(params[:id])
  anim.destroy
  anim.to_json
end

delete "/rescues/:id/volunteers" do
  vol = Volunteer.find(params[:id])
  vol.destroy
  vol.to_json
end

post "/rescues/:id/volunteers" do
  vol = Volunteer.create(location: params[:location], name: params[:name], talents: params[:talents])
  vol.to_json
end

patch '/rescues/:id/volunteers/:id' do
  resq = Rescue.find(params[:id])
  rv = resq.volunteers
  rv.to_json
 end

post "/rescues/:id/animals" do
  anim = Animal.create(age: params[:age], name: params[:name], sex: params[:sex], breed: params[:breed], kind: params[:kind], color: params[:color], adoption_status: params[:adoption_status])
  anim.to_json
end

patch "/rescues/:id/animals" do
  anim = Animal.find(params[:id])
  anim.update(age: params[:age], name: params[:name], sex: params[:sex], breed: params[:breed], kind: params[:kind], color: params[:color], adoption_status: params[:adoption_status])
  anim.to_json
end

patch "/rescues/:id/volunteers" do
  vol = Volunteer.find(params[:id])
  vol.update(location: params[:location], name: params[:name], talents: params[:talents])
  vol.to_json
end

end
