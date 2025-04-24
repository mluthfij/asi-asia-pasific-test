class CreateMyClients < ActiveRecord::Migration[7.1]
  def change
    create_table :my_clients, id: :primary_key do |t|
      t.column :name, :string, limit: 250, null: false
      t.column :slug, :string, limit: 100, null: false
      t.column :is_project, :string, limit: 30, null: false, default: '0'
      t.column :self_capture, :string, limit: 1, null: false, default: '1'
      t.column :client_prefix, :string, limit: 4, null: false
      t.column :client_logo, :string, limit: 255, null: false, default: 'no-image.jpg'
      t.text :address
      t.column :phone_number, :string, limit: 50
      t.column :city, :string, limit: 50
      t.timestamps(precision: 0)
      t.datetime :deleted_at, precision: 0
    end
  end
end
