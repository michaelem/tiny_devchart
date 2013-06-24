class ChangeDevelopmentTimeNoteToText < ActiveRecord::Migration
  def up
    change_column(:development_times, :notes, :text)
  end

  def down
    change_column(:development_times, :notes, :string)
  end
end
