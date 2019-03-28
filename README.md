# Project
config server basic template
## Include:
1. In resources exists 2 files: application & bootstrap that contains configuration like git repo uri and secret
2. Inside pom.xml was added spring security
3. Ensure java security encryption is intalled
## How to run
### standalone
```
docker build -t wyracocha/config-server:v1.0.0 . \
docker run --name config-server -p 8080:8888 -d -e REPO_URI=https://github.com/miguelAliaga/encuestas-config-data wyracocha/config-server:v1.0.0
```
### using compose
```
REPO_URI=https://github.com/miguelAliaga/encuestas-config-data.git docker-compose up -d
```

### using swarm

```
docker service create --name=calcedonia --replicas=2 -d -e REPO_URI=https://github.com/miguelAliaga/encuestas-config-data -p 8080:8888  wyracocha/calcedonia:v1.4.0
```

