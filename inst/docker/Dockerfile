FROM us.gcr.io/broad-dsp-gcr-public/anvil-rstudio-bioconductor:3.16.0

RUN sudo apt-get update
RUN sudo apt-get -y install openjdk-8-jre openjdk-8-jdk

RUN usermod -g users rstudio

USER rstudio

ENV PATH="/usr/lib/jvm/java-8-openjdk-amd64/bin/:${PATH}"

RUN R -e "BiocManager::install(c('remotes', 'sparklyr', 'sparkhail', 'vjcitn/BiocSpark'))"
RUN R -e "sparklyr::spark_install(version='2.4.3')"
RUN R -e "sparkhail::hail_install()"
