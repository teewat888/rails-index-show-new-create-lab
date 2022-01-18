class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        set_coupon
    end

    # def create
    #     @coupon = Coupon.new
    #     @coupon.coupon_code = params[:coupon_code]
    #     @coupon.store = params[:store]
    #     @coupon.save

    #     redirect_to coupon_path(@coupon)
    # end

    def create
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])

        redirect_to coupon_path(@coupon)
    end

    def new
    end

    private 
        def set_coupon
            @coupon = Coupon.find(params[:id])
        end


end