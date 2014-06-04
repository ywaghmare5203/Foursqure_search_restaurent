class CreateForsquareSearches < ActiveRecord::Migration
  def change
    create_table :forsquare_searches do |t|

      t.timestamps
    end
  end
end
