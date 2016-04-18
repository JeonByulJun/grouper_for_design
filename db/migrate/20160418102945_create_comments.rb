class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :task_id
      t.integer :wansungdo_log
      t.string :comment_log
      t.timestamps null: false
    end
  end
end
