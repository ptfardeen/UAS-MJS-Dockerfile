#From Instruction
docker build -t ptfardeen/from from

docker image ls

#Run Instruction
docker build -t ptfardeen/run run

docker build -t ptfardeen/run run --progress=plain --no-cache

docker image ls | grep ptfardeen

#Command Instruction
docker build -t ptfardeen/command command

docker image inspect ptfardeen/command

docker container create --name command ptfardeen/command

docker container start command

docker container ls

docker container ls -a | grep ptfardeen

docker container logs command

#Label Instruction
docker build -t ptfardeen/label label

docker image inspect ptfardeen/label

#Add Instruction
docker build -t ptfardeen/add add

docker container create --name add ptfardeen/add

docker container start add

docker container logs add

#Copy Instruction
docker build -t ptfardeen/copy copy

docker container create --name copy ptfardeen/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t ptfardeen/ignore ignore

docker container create --name ignore ptfardeen/ignore

docker container start ignore

docker container logs ignore

# Expose Instruction
docker build -t ptfardeen/expose expose

docker image inspect ptfardeen/expose

docker container create --name expose -p 8080:8080 ptfardeen/expose

docker container start expose

docker container ls

docker container stop expose