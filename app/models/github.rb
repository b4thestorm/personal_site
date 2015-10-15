class Github < ActiveRecord::Base
  require 'csv'
#https://github.com/b4thestorm?tab=repositories
#scrape Repos information from Github 
MAP = ['iHelp', 'Connected', 'Adjust', 'Group',  'Gridstack', 'My Blog', 'Music API Client', 'Reservester', 'Practice', 'Odin' , 'PIZZA', 'BlackJack', 'Scope', 'testProject' ]

def import_repo_info
  filename = File.join(Rails.root, "github.csv") 
  read_repo = CSV.read(filename, :encoding => 'ISO-8859-1', :headers => true, :header_converters => :symbol)
  set_object = read_repo.each {|col| Github.create(url: col[:url], description: col[:description])} 
end



end
