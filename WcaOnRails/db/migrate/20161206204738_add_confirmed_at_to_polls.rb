# frozen_string_literal: true
class AddConfirmedAtToPolls < ActiveRecord::Migration
  def up
    add_column :polls, :confirmed_at, :datetime
    remove_column :polls, :confirmed
  end

  def down
    remove_column :polls, :confirmed_at
    add_column :polls, :confirmed, :boolean
  end
end
