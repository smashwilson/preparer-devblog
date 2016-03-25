FROM quay.io/deconst/preparer-jekyll

USER root
RUN npm install -g jekyll-audit
USER preparer

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD []
