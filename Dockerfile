FROM node:20.11.1-alpine3.19

WORKDIR /app

COPY npm app.js package.json ./

EXPOSE 7860

RUN apk add --no-cache curl bash && \
    curl -o nezha-agent https://amd64.ssss.nyc.mn/agen && \
    chmod +x nezha-agent && \
    npm install && \
    chmod +x npm app.js

CMD ["npm", "start"]
