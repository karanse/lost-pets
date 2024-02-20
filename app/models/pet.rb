class Pet < ApplicationRecord
  SPECIES = ["cat", "dog"]

  validates :name, :address, :species, :found_on, presence: true
  validates :species, inclusion: { in: SPECIES, message: "We only work with cats and dogs." }

  def found_days_ago
      (Date.today - self.found_on).to_i
  end
end
