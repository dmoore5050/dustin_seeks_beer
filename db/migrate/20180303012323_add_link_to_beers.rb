class AddLinkToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :link, :string
  end
end
