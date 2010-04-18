def denied!
  response.should redirect_to(root_path)
  flash[:notice].should eql("You must be logged in to do that.")
end

def login_as(user)
  UserSession.create!({ :login => user.login, :password => user.password })
end