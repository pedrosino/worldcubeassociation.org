# frozen_string_literal: true
class AddConfirmedAtToPolls < ActiveRecord::Migration
  def up
    add_column :polls, :confirmed_at, :datetime
    execute <<-SQL
      UPDATE polls
      SET confirmed_at = created_at
      WHERE confirmed = 1
    SQL
    remove_column :polls, :confirmed
  end

  def down
    remove_column :polls, :confirmed_at
    add_column :polls, :confirmed, :boolean
  end
end
