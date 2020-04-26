class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.string "email", :limit=> 50, :null => false
      t.column "password", :string, :limit=> 30, :null => false
      t.timestamps

        #if t.timestamps wasn't created
        #would've needed to create the following
          #t.datetime "created_at"
          #t.datetime "updated_at"

        #other datatypes:
          #string
          #column
          #timestamps
          #binary- 1/0
          #boolean- true/false
          #data
          #datetime
          #decimals
          #float
          #integer
          #text
          #time


        #options for datatypes:
          #:limit
          #:null
          #:string
          #:default =>
          #:precision
            #for decimals only
          #:scale
            #for decimals only
    end
  end

    def down
      drop_table :users
    end
end
