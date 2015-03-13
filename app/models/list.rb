class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true
  validates :description, :presence => true

  private
  before_save do
    self.name = self.name.titlecase
    self.description = self.description.titlecase
  end
  
end
