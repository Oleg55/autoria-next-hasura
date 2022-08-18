<!-- development -->

docker-compose up -d

<!-- push to github -->
cd hasura
cd metadata
hasura metadata export
cd ..
cd ..
git add .
git status 
git  commit -m "some commit"
git push 