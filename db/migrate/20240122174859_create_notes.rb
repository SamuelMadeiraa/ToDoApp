# class CreateNotes < ActiveRecord::Migration[7.1]
#   def change
#     create_table :notes do |t|
#       t.references :user, null: false, foreign_key: true
#       t.string :title
#       t.text :content

#       t.timestamps
#     end
#   end
# end
class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
