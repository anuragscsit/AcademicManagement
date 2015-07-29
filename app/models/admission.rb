class Admission < ActiveRecord::Base

  has_many :gardians

  accepts_nested_attributes_for :gardians, :allow_destroy => true

end
