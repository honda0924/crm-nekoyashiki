class ClientsController < ApplicationController
  def index
    @clients=Client.where(["client_name1 LIKE ? OR client_name2 LIKE ?", "%#{params[:client_search]}%","%#{params[:client_search]}%"])
    @client=Client.new
  end
  def create
    @client =Client.create(client_params)
    redirect_to root_path
  end
  def show
    @client =Client.find(params[:id])
  end
  private
  def client_params
    params.require(:client).permit(:client_name1,:client_name2,:postcode,:addr1,:addr2,:addr3,:tel,:fax,:client_person_in_charge,:mobile,:url,:email,:client_rank_id,:client_cat_id,:closing_day_id,:payment_day_id,:payment_method_id,:user_id)
    # params.require(:client).permit(:company_name1,:company_name2,:postcode,:addr1,:addr2,:addr3,:tel,:fax,:client_person_in_charge,:mobile,:url,:email,:client_rank_id,:client_cat_id,:closing_day_id,:payment_day_id,:payment_method_id,:user_id,contacts_attributes:[:id,:act_cat_id,:detail,:file,:start_date,:end_date,:in_progress])
  end
end
