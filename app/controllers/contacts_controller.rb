class ContactsController < ApplicationController
  def create
    Contact.create(contact_params)
    redirect_to client_path(params[:client_id])
  end
  def edit
    @contact = Contact.find(params[:id])
    @client = @contact.client
  end
  def update
    @contact = Contact.find(params[:id])
    @client = @contact.client
    @contact.update(contact_params)
    redirect_to client_path(params[:client_id])
  end

  private
  def contact_params
    params.require(:contact).permit(:act_cat_id,:detail,:start_date,:end_date,:in_progress).merge(client_id: params[:client_id])
  end
  
end
