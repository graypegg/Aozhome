module UsersHelper
  def all_users
    User.order(created_at: :desc).all.map {|user| [user.full_name, user.id]}
  end
end
