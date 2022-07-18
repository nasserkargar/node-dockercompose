# from base image node
FROM	node:8.11-slim
ENV     workingdir /home/bob
RUN	useradd bob && mkdir $workingdir && chown bob:bob $workingdir
USER	bob
WORKDIR	$workingdir
COPY	package.json .
ADD	index.js .
RUN	npm install
EXPOSE	3070
# command executable
ENTRYPOINT ["node"]
