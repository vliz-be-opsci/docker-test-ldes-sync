FROM node:lts-slim

RUN npm install -g @treecg/actor-init-ldes-client@4.0.9
COPY ./ /
WORKDIR /
RUN chmod +x ./entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
CMD ["https://marineregions.org/feed"]