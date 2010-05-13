class Task < ActiveRecord::Base

  scope :finished, where("tasks.finished IS NOT NULL").order("finished DESC")

  scope :unfinished, where("tasks.finished IS NULL")

  def finished?
    finished != nil
  end

  def finish
    update_attributes(:finished => Time.now)
  end
end
