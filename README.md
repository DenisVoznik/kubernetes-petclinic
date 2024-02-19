# kubernetes-petclinic

##### How to build Docker image
Clone petclinic repository:
```sh
git clone https://github.com/spring-projects/spring-petclinic.git
```

Copy Docker file from this repo to 'spring-petclinic' folder.
Then:

```sh
cd spring-petclinic
docker build -t petclinic .
```

There are two folder with sets of Kubernetest files:
- postgres (DB)
- petclinic (app)