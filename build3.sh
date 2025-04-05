
rails generate scaffold List name:string last_name:string rut:string phone:string location:string avatar:string user:references done:boolean

rails db:create 
rails db:migrate

git add .
git commit -m "Scaffold CRUD List"
git push
