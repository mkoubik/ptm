class ChangeFinishedToDatetimeInTask < ActiveRecord::Migration
  def self.up
    change_column :tasks, :finished, :datetime
  end

  def self.down
    change_column :tasks, :finished, :boolean
  end
end
