<!-- development -->

docker-compose up -d

<!-- push to github -->
cd hasura/metadata
hasura metadata export
hasura migrate create "init" --from-server --database-name default
<!-- in file migrations/default/7777777_init/up.sql  replaced public.gen_random_uuid() with gen_random_uuid -->
cd ../..
git add .
git status 
git  commit -m "some commit"
git push 
<!-- go to https://github.com/Oleg55/autoria-next-hasura/tree/development and open pull request  --> 