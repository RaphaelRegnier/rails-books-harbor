class AddAttachmentToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :attachment, :string
  end
end
