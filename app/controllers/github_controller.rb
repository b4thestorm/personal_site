class GithubController < ApplicationController

def index 
   @list = Github.all
end 

end
