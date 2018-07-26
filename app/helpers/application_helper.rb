module ApplicationHelper

  def avatar_for(user, options = { size: 50 })
    size = options[:size]
    avatar_url =  url_for(user.avatar)
    image_tag(avatar_url, alt: user.username, class: "img-circle", size:150)
  end

end
