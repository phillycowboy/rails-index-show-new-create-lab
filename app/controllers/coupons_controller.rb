class CouponsController < ApplicationController


    def index 
        @coupons = Coupon.all
        # binding.pry
    end

    def show
    @coupon = Coupon.find(params[:id])
    end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    # binding.pry
    @coupon.save 
    redirect_to coupon_path(@coupon)
  end

end 