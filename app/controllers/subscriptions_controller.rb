class SubscriptionsController < ApplicationController
  def verify_apple_receipt
    opts = {
      shared_secret: '72d6944b2acd42f0a2d1e9fdc3eb68c9',
      exclude_old_transactions: true
    }
    
    if receipt = Venice::Receipt.verify(receipt_data, opts)
      render json: { success: true, receipt: receipt }
    end
  end

  private

  def receipt_data
    return params[:receipt_data]
  end
end
