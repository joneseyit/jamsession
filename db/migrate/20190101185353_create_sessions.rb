class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.datetime :time
      t.string :title
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
