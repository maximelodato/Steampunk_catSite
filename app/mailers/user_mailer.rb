# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
    def welcome_email(user)
      @user = user
      mail(to: @user.email, subject: 'Bienvenue sur notre site !')
    end
  
    def new_user_notification(user)
      @user = user
      mail(to: 'contactus@steampunkcat.online', subject: 'Nouvel utilisateur inscrit')
    end
  end
  