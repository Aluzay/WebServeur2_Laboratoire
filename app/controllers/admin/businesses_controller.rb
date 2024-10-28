class Admin::BusinessesController < AdminController
  def index
    @businesses = Business.all.order("name DESC")
  end

    def show
        @business = Business.find(params[:id])
    end
end