class SubscriptionsController < ApplicationController
  def verify_apple_receipt
    opts = {
      shared_secret: ENV['apple_itunes_shared_secret'],
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
