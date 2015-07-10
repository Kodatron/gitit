class UserMailer < ApplicationMailer
  default from: "geek@creativegeek.com"
  layout 'mail/mailer'

  def registration_mail(user)
    @user = user
    mail(to: @user.email)
  end

end
