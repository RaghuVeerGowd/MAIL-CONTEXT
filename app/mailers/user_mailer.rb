class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'
 
  def welcome_email(mail_context)
    @user = mail_context	
    @url  = 'https://www.google.co.in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def my_wel(email,message_body)
   @email = email
   @message_body = message_body
   @url  = 'https://www.google.co.in'
   mail(to: @email, subject: 'Welcome to My Awesome Site')
  end
  
end
