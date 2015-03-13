class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true

  private
  before_save do
    self.description = self.description.titlecase
  end

end
