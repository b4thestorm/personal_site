class Linkedin < ActiveRecord::Base
require 'csv'


#this model is supposed to represent my resume as it appears on linkedin

def import_resume
    filename = File.join(Rails.root, "arnold.csv")
    read_file = CSV.read(filename, :encoding => 'ISO-8859-1', :headers => true, :header_converters => :symbol)  
    set_object = read_file.each {|col| Linkedin.create(name: col[:name],title: col[:title],experience: col[:experience],summary: col[:summary], education: col[:education], skills: col[:skills] )}                                  
end

# ["id", "name", "title", "experience", "summary", "education", "skills", "created_at", "updated_at"]


end
