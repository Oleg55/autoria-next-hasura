<!-- development -->

docker-compose up -d

<!-- all doing in hasura console http://localhost:9695/console -->
<!-- to start hasura console use command -->
hasura console

<!-- push to github -->
<!-- cd hasura/metadata
hasura metadata export
hasura migrate create "init" --from-server --database-name default -->
<!-- in file migrations/default/7777777_init/up.sql  replaced public.gen_random_uuid() with gen_random_uuid -->
<!-- cd ../.. -->
git add .
git status 
git  commit -m "some commit"
git push 
<!-- go to https://github.com/Oleg55/autoria-next-hasura/tree/development and open pull request  --> 

<!-- создать файл миграции с прода хасуры -->
<!-- hasura migrate create "init" --from-server --endpoint https://autorianext.hasura.app --admin-secret VyxjuI9zLQVx5pa15banWW6Wpf4QiBTxthEoxizNeYsDFOVX16sNiETpIPzvrqEd -->

<!-- получаем метаданные  с прода хасуры -->

<!-- hasura metadata export --endpoint https://autorianext.hasura.app --admin-secret VyxjuI9zLQVx5pa15banWW6Wpf4QiBTxthEoxizNeYsDFOVX16sNiETpIPzvrqEd -->


<!-- migrations applied -->

<!-- hasura migrate apply --skip-execution --version 1660846240430 --endpoint https://autorianext.hasura.app --admin-secret VyxjuI9zLQVx5pa15banWW6Wpf4QiBTxthEoxizNeYsDFOVX16sNiETpIPzvrqEd  -->

<!-- create seed -->
<!-- use this command in hasura folder "cd hasura"-->

hasura seed create tables_seed --from-table car_brands --from-table car_engine --from-table car_models --from-table car_price --from-table car_spec_model --from-table car_types --from-table car_year 

<!-- push seed to prod -->
hasura seed apply --file 1660904435481_tables_seed.sql --database-name default --endpoint https://autorianext.hasura.app