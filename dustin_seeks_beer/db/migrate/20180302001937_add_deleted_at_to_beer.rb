class AddDeletedAtToBeer < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :deleted_at, :timestamp
  end
end
