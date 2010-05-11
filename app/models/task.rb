class Task < ActiveRecord::Base

  scope :not_finished, where("tasks.finished IS NULL")

  def finish
    update_attributes(:finished => true)
  end
end
