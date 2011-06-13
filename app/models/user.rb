class User < ActiveRecord::Base

  def getCurrentUser
    User.find_by_id(session[:user_id])
  end

  def getCurrentUserName
    @name = getCurrentUser.name
  end
end
