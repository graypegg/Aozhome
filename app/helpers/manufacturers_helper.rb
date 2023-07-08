module ManufacturersHelper
  def all_manufacturers
    Manufacturer.order(created_at: :desc).pluck(:name, :id)
  end
end
