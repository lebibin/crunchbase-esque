class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
