class CreateIous < ActiveRecord::Migration
  def change
    create_table :ious do |t|
      t.string    :name
      t.string    :event
      t.float     :amount
      t.string    :contact
      t.datetime  :date
      t.string    :status
      t.timestamps null: false
    end
  end
end
