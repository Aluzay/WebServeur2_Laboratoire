class BusinessesController < PublicController
  def index
    @businesses = Business.all.order("name ASC")
  end

  def show
    @business = Business.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @business.menus.to_json(include: {menus: {include: :items}}) }
      format.xml { render :xml => @business.menus.as_json(include: {menus: {include: :items}}).to_xml }
    end
  end
end