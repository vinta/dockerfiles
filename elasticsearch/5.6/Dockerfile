FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.1

RUN bin/elasticsearch-plugin install analysis-icu
RUN bin/elasticsearch-plugin install analysis-smartcn
RUN bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v5.6.1/elasticsearch-analysis-ik-5.6.1.zip

CMD ["/bin/bash", "bin/es-docker"]

EXPOSE 9200 9300
