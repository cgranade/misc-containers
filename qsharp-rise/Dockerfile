FROM mcr.microsoft.com/quantum/iqsharp-base:0.8.1906.2007-beta
USER root
ADD notebook.json ${HOME}/.jupyter/nbconfig/notebook.json
RUN pip install RISE \
                jupyter_nbextensions_configurator
RUN chown ${USER}:${USER} -R ${HOME}/.jupyter/

USER $USER
RUN jupyter nbextensions_configurator enable --user

VOLUME [ "/workspace" ]
WORKDIR /workspace
EXPOSE 8888
CMD [ "/usr/local/bin/jupyter", "notebook", "--ip=0.0.0.0" ]
