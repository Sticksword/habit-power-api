class AddStateToObjective < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :state, :int, :limit => 2
  end
end
