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
      flash[:success] = "Message sent."
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private
    def contact_params
      #strong parameters
       params.require(:contact).permit(:name, :email, :comments)
    end
end