class Season < ApplicationRecord
  # validates_with IsCurrentSeasonValidator
  validate :check_for_is_other_current

  def check_for_is_other_current
    # binding.pry
    if Season.where(is_current?: true).any?
      errors.add(:is_current?, "A current season already exists!")
    end
  end
end
