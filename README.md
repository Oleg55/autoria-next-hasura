<!-- development -->

docker-compose up -d

<!-- push to github -->
cd hasura
cd metadata
hasura metadata export
cd ..
git add .
git  commit -m "some commit"
git push