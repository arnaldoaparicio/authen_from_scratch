class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # cannot be null?
      t.string :email, null: false

      t.timestamps
    end

    #unique being there cannot be more than one combination of these?
    add_index :users, :email, unique: true
  end
end
