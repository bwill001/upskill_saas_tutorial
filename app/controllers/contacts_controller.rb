class ContactsController < ApplicationController
  def new
    #@ signifies instance variables
    @contact = Contact.new
  end
  
  #saving to db
  def create
    #mass assignment
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "Message sent."
    else
      redirect_to new_contact_path, notice: "An error has occurred."
    end
  end
  
  private
    def contact_params
      #strong parameters
       params.require(:contact).permit(:name, :email, :comments)
    end
end