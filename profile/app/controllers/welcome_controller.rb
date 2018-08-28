class WelcomeController < ApplicationController
  def index
    auth = {:username => "smiththekid92", :password => "d39d9764b5c0bc74dfb29a5a1c84dfea8776559b"}
    @profile = HTTParty.get('https://api.github.com/users/smiththekid92', :basic_auth => auth)
    @repo = HTTParty.get('https://api.github.com/users/smiththekid92/repos', :basic_auth => auth)
  end
end
