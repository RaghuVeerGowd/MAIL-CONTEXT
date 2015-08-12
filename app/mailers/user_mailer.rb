class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(mail_context)
  	debugger
    @user = mail_context	
    @url  = 'https://www.google.co.in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
