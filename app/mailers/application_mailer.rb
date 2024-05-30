# app/mailers/application_mailer.rb
class ApplicationMailer < ActionMailer::Base
    default from: 'votre-adresse-email@votre-domaine.com'
    layout 'mailer'
  end
  