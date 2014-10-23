class CreateFarmersMarketTable < ActiveRecord::Migration
  def change
  	create_table :farmers_market do |t|
  		t.string :borough
  		t.string :market_name
  		t.string :street_address

  		t.timestamps
  	end
  end
end
