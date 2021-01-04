class AddHowtomakeToRyouris < ActiveRecord::Migration[6.1]
  def change
    add_column :ryouris, :howtomake, :string
  end
end
