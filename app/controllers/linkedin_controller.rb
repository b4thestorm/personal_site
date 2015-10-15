class LinkedinController < ApplicationController

def index 
  @profile  = Linkedin.first
end 

end
