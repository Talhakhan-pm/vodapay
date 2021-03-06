class BasicVerificationsController < ApplicationController
  before_action :set_merchant

  def create
    @merchant.basic_verifications.create! params.required(:basic_verification).permit(:address_1, :city, :state, :zip)
    redirect_to new_merchant_identity_verification_path(@merchant)
  end




  private

  def set_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end
  
end
