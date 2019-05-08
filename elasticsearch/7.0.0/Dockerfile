FROM elasticsearch:7.0.0

RUN bin/elasticsearch-plugin install -b analysis-icu
RUN bin/elasticsearch-plugin install -b analysis-smartcn
RUN bin/elasticsearch-plugin install -b https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.0.0/elasticsearch-analysis-ik-7.0.0.zip
