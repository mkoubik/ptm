class Task < ActiveRecord::Base

  scope :unfinished, where("tasks.finished IS NULL")

  def finish
    update_attributes(:finished => Time.now)
  end
end
