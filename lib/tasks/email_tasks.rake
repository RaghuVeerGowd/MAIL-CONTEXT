task :send_email_context => :environment do
  # ... set options if any
  mail_context = MailContext.first
  email = mail_context.email
  message_body = mail_context.message_body
  UserMailer.my_wel(email,message_body).deliver!
end
