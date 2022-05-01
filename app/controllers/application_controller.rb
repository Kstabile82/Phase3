class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

 get "/rescues" do
  rescu = Rescue.all 
  rescu.to_json
 end

 get '/rescues/:id' do
   resq = Rescue.find(params[:id])
   resq.to_json(include: :animals)

 end


end
