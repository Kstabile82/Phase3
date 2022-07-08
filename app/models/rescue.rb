class Rescue < ActiveRecord::Base
     has_many :volunteers
     has_many :animals
     has_many :projects

    
end