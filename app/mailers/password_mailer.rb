class PasswordMailer < ActionMailer::Base
  default from: "no-reply@pardiy.com"

  def registration_email(registrant)
  	@registrant = registrant

  	mail to: @registrant.email, subject: "Create Your ParDIY Credentials"
  end

  def reset_email(user)
  	@user = user

  	mail to: @user.email, subject: "Change Your ParDIY Credentials"
  end
end
