class BusinessVerificationsController < ApplicationController
  before_action :set_merchant

  def create
    @merchant.business_verifications.create! params.required(:business_verification).permit(:business_name, :ein, :entity_type)
    redirect_to root_path
  end




  private

  def set_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end
end
