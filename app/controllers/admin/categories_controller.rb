class Admin::CategoriesController < ApplicationController
  
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME_KEY'], password: ENV['ADMIN_PASSWORD_KEY']

  # GET /admin/categories
  # GET /admin/categories.json
  def index
    @categories = Category.all
  end

  # GET /admin/categories/1
  # GET /admin/categories/1.json
  def show
  end

  # GET /admin/categories/new
  def new
    @category = Category.new
  end

  # GET /admin/categories/1/edit
  def edit
  end

  # POST /admin/categories
  # POST /admin/categories.json
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'New category created!'
    else
      render :new 
    end
  end

  # PATCH/PUT /admin/categories/1
  # PATCH/PUT /admin/categories/1.json
  # def update
  #   respond_to do |format|
  #     if @admin_category.update(admin_category_params)
  #       format.html { redirect_to @admin_category, notice: 'Category was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @admin_category }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @admin_category.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /admin/categories/1
  # DELETE /admin/categories/1.json
  # def destroy
  #   @admin_category.destroy
  #   respond_to do |format|
  #     format.html { redirect_to admin_categories_url, notice: 'Category was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def category_params
      params.require(:category).permit(:name)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def admin_category_params
    #   params.fetch(:admin_category, {})
    # end
end
