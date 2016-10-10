class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    @url  = 'http://wanderlust-blog.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to WanderLust!')
  end

end
