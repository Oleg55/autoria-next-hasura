<!-- development -->

docker-compose up -d

<!-- push to github -->
cd hasura/metadata
hasura metadata export
hasura migrate create "init" --from-server --database-name default
cd ..
cd ..
git add .
git status 
git  commit -m "some commit"
git push