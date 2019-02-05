class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :First_name
      t.string :Last_name
      t.string :email
      t.string :Address
      t.string :gender
      t.integer :Age
      t.bigint :PhoneNumber

      t.timestamps
    end
  end
end
