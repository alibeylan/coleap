# README

This project focuses in creating a REST endpoint to to retrieve all records with a given structure. these records should be able to be sorted by price or by model.

To get started run 'bundle install' and then 'bundle exec rails s' to open the server in 'localhost:3000'

All data is already seeded and for you to get it you should run 'bundle exec rake db:seed'

If you want to sort by price, please go to http://localhost:3000/items?sort_by=price
If you want to sort by model, please go to http://localhost:3000/items?sort_by=model