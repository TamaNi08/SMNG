class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.bigint :age, null: false
      t.bigint :sex, null: false
      t.string :remarks

      t.timestamps
    end
  end
end
