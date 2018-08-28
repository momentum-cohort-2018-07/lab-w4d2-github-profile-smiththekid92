class CreateProfile2s < ActiveRecord::Migration[5.2]
  def change
    create_table :profile2s do |t|

      t.timestamps
    end
  end
end
