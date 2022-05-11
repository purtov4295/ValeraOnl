[![Unit Tests & Lint](https://github.com/purtov4295/ValeraOnl/actions/workflows/main.yml/badge.svg)](https://github.com/purtov4295/ValeraOnl/actions/workflows/main.yml)


Postgrsql-setup:
```bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql postgresql-contrib libpq-dev
username: postgres
password: postgres
```


how to create controller:
```bash
app/controllers
rails g controller Names
rails g controller Students
```

how to create model:
```bash
app/models
rails g model Student result:integer
rails g model Name my_name:string student:references

references - eto svyaz modeley

rails g controller Conditions
rails g controller Sessions
rails g controller Users
rails g controller ValeraActions

rails g model User email:string name:string password_digest:string health:integer i tak dalee
rails g model ValeraAction
rails g model Condition attr_name:string ....... ValeraAction:references
```

```bash
  create_table "conditions", force: :cascade do |t|
    t.string "attr_name"
    t.integer "min"
    t.integer "max"
    t.string "attr_name_eff"
    t.integer "value_eff"
    t.bigint "valera_action_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["valera_action_id"], name: "index_conditions_on_valera_action_id"
  end
```

```bash
  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
    t.integer "health"
    t.integer "alcohol"
    t.integer "happy"
    t.integer "tired"
    t.integer "money"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
```

```bash
  create_table "valera_actions", force: :cascade do |t|
    t.string "name"
    t.integer "health"
    t.integer "alcohol"
    t.integer "happy"
    t.integer "tired"
    t.integer "money"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
```

```bash
rails db:create
rails db:migrate #eto posle sozdania model

rails server #zapusk 
```
