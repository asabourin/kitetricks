Sequel.migration do
  up do
    create_table :riders_tricks do
      foreign_key :rider_id, :riders, :key => :id, :allow_null => false
      foreign_key :trick_id, :tricks, :key => :id, :allow_null => false
      primary_key [:rider_id, :trick_id]
      Integer :level_left, :default => 0
      Integer :level_right, :default => 0
    end
  end

  down do
    drop_table :riders_tricks
  end
end
