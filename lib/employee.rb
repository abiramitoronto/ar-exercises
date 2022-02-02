class Employee < ActiveRecord::Base

  belongs_to :store

  validate :first_name_not_spaces, :last_name_not_spaces,
   :hourly_rate_range, :store_id_present
    

  def first_name_not_spaces

    if first_name.empty?
      errors.add(:first_name, "First name can't be blank ")
    end
  end

  def last_name_not_spaces

    if last_name.empty?
      errors.add(:last_name, "Last name can't be blank ")
    end
  end

  def hourly_rate_range

    if hourly_rate < 40 || hourly_rate > 200
      errors.add(:hourly_rate, "hourly rate should be between 40 to 200 ")
    end
  end

  def store_id_present

    if store_id == 0
      errors.add(:store_id, " need to have store ID ")
    end
  end

end
