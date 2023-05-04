class Admin::DashboardController < Admin::AdminController
  def show
    @product_count = Product.count
    @categories_count = Category.count
  end
end
