class CouponsController < ApplicatonController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def create
    @coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
  end
end