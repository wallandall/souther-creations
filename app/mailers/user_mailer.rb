class UserMailer < ApplicationMailer
  default from: "chrisw@webe-solutions.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'chrisw@webe-solutions.com',
         subject: "A new contact form message from #{name}")
  end
end
