class ContactsController < ApplicationController
  # GET /contacts/new
  # GET /contacts/new.json
  def new
    @contact = Contact.new
	
    respond_to do |format|
      format.html
      format.json { render :json => @contact }
    end
  end

  def create
    @contact = Contact.new(params[:contact])

    respond_to do |format|
      if @contact.save
        ContactMail.contact_send(@contact).deliver
        format.html { redirect_to root_path, :notice => 'Contact was successfully created.' }
        format.json { render :json => @contact, :status => :created, :location => @contact }
      else
        format.html { render :action => "new" }
        format.json { render :json => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end
end