

git init
git add .
git commit -m "Initial commit"

bundle add devise
bundle add image_processing
bundle add pg
bundle add rspec-rails

git init
git add .
git commit -m "adding gems devise, pg, rspec, image_processing"


rails generate devise:install 
rails generate devise User 

git init
git add .
git commit -m "devise install && User setup"


rails scaffold list name last_name rut email phone location avatar user:references done:boolean

rails db:create 
rails db:migrate

git init
git add .
git commit -m "Scaffold CRUD List"

