module UsersHelper

  def user_name(user)
    user.first_name + " " + user.last_name 
  end

  def has_max_appointments(user)
    if user.appointments.count == 2
      return true
    end
  end

end
