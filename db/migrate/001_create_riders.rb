Sequel.migration do
  up do
    create_table :riders do
      primary_key :id
      String :first_name
      String :last_name
      String :username
      String :facebook_id
      String :email
      String :auth_token
      DateTime :created_at
      DateTime :updated_at
    end
  end

  down do
    drop_table :riders
  end
end
