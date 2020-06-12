class ClientsController < ApplicationController
  before_action -> {set_client(params[:id])},only: [:show,:edit,:update,:destroy]
  def index
    @clients=Client.where(user_id: current_user.id).where(["client_name1 LIKE ? OR client_name2 LIKE ?", "%#{params[:client_search]}%","%#{params[:client_search]}%"])
    @client=Client.new
    @in_progress_contacts=Contact.joins(:client).where(clients: {user_id: current_user.id}).where(in_progress: true).order("end_date ASC")
    @finished_contacts=Contact.joins(:client).where(clients: {user_id: current_user.id}).where(in_progress: false)
    @contact = Contact.new
  end
  def create
    @client =Client.create(client_params)
    redirect_to root_path
  end
  def show
    @contact = Contact.new
    @contacts = @client.contacts
  end
  def edit
  end
  def update
    @client.update(client_params)
    redirect_to client_path(params[:id])
  end
  def bulk_insert
    contact_array=[]
    bulk_params[:client_ids].each do |cid|
      contact=Contact.new(act_cat_id: bulk_params[:act_cat_id],detail: bulk_params[:detail],start_date: bulk_params[:start_date],end_date: bulk_params[:end_date],in_progress: bulk_params[:in_progress],client_id: cid)
      contact_array << contact
    end
    Contact.import contact_array
    redirect_to clients_path
  end
  def import
    
  end

  private
  def set_client(params)
    @client = Client.find(params)
  end
  def client_params
    params.require(:client).permit(:client_name1,:client_name2,:postcode,:add1,:add2,:add3,:tel,:fax,:client_person_in_charge,:mobile,:url,:email,:client_rank_id,:client_cat_id,:closing_day_id,:payment_day_id,:payment_method_id,:user_id)
    # params.require(:client).permit(:company_name1,:company_name2,:postcode,:addr1,:addr2,:addr3,:tel,:fax,:client_person_in_charge,:mobile,:url,:email,:client_rank_id,:client_cat_id,:closing_day_id,:payment_day_id,:payment_method_id,:user_id,contacts_attributes:[:id,:act_cat_id,:detail,:file,:start_date,:end_date,:in_progress])
  end
  def bulk_params
    params.require(:contact).permit(:act_cat_id,:detail,:start_date,:end_date,:in_progress,{:client_ids => []})
  end
end
