class ContactMail < ActionMailer::Base
  default :from => "guilherme.barbosa90@gmail.com"
  
  def contact_send(contact)
    @contact = contact
    attachments["logo.gif"] = File.read("#{Rails.root}/app/assets/images/logo.png")
    mail(:to => "#{contact.name} <#{contact.email}>", :subject => "Fale Conosco - #{contact.subject}")
  end
end