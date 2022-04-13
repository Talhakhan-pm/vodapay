class IdentityVerificationsController < ApplicationController
  before_action :set_merchant

  def create
    @merchant.identity_verifications.create! params.required(:identity_verification).permit(:ssn, :dl_number)
    redirect_to new_merchant_business_verification_path(@merchant)
  end




  private

  def set_merchant
    @merchant = Merchant.find(params[:merchant_id])
  end
end
