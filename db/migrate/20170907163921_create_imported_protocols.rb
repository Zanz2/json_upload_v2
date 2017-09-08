class CreateImportedProtocols < ActiveRecord::Migration[5.1]
  def change
    create_table :imported_protocols do |t|
      t.string :filename
      t.string :content_type
      t.binary :file_contents
      t.binary :objekt
      t.timestamps
      t.timestamps
    end
  end
end
