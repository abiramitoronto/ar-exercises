class Store < ActiveRecord::Base

  has_many :employees

  validate :store_name_not_spaces, :annual_revenue_is_integer

  def store_name_not_spaces

    if name.empty? || name.length < 3
      errors.add(:name, "Store name can't be blank (or) can't be less than 3")
    end
  end

  def annual_revenue_is_integer
  
    if !(annual_revenue.is_a? Integer)
      errors.add(:annual_revenue, "Annual Revenue should be Integer")
    end
  end


end
