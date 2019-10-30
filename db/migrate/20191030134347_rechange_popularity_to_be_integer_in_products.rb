class RechangePopularityToBeIntegerInProducts < ActiveRecord::Migration[6.0]
  def up
    change_column :products, :popularity, :integer
  end

  def down
    change_column :products, :popularity, :string
  end
end
