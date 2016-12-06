# frozen_string_literal: true
class AddConfirmedAtToPolls < ActiveRecord::Migration
  def up
    add_column :polls, :confirmed_at, :datetime
  end

  def down
    remove_column :polls, :confirmed_at
  end
end
