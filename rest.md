# REST = CRUD

Resource = Todo

Create

- new (form)
  - get 'todos/new', to: 'todos#new', as: 'new_todo'
- create (creating it)
  - post 'todos', to: 'todos#create'

Read

- index (all)
  - get 'todos', to: 'todos#index', as: 'todos'
- show (one)
  - get 'todos/:id', to: 'todos#show'

Update

- edit (form)
  - get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
- update (updating it)
  - patch 'todos/:id', to: 'todos#update'

Delete

- destroy (deleting it)
  - delete 'todos/:id', to: 'todos#destroy', as: 'todo'

  - get 'todos', to: 'todos#index', as: 'todos'
  - get 'todos/new', to: 'todos#new', as: 'new_todo'
  - get 'todos/:id', to: 'todos#show'

Ordering rule: new before show/update/destroy

Form field helpers.
https://github.com/bootstrap-ruby/bootstrap_form/
button                   email_field                               search_field
check_box                file_field                                select
collection_check_boxes   grouped_collection_select                 submit
collection_radio_buttons hidden_field (not wrapped, but supported) telephone_field
collection_select        month_field                               text_area
color_field              number_field                              text_field
date_field               password_field                            time_field
date_select              phone_field                               time_select
datetime_field           radio_button                              time_zone_select
datetime_local_field     range_field                               url_field
datetime_select          rich_text_area                            week_field
