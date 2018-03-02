class AddDescToBeer < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :desc, :string
  end
end
