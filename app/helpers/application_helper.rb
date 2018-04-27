module ApplicationHelper
  def default_image(user)
    if user.avatar_url.nil?
      "twitter_egg.png"
    else
      user.avatar_url
    end
  end

  def nice_date(date)
    date.strftime("%b %d, %Y")
  end
end
