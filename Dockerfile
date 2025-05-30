FROM node:20.11.1-bullseye

WORKDIR /app

COPY npm app.js package.json ./

# 安装 curl 和 bash
RUN apt-get update && \
    apt-get install -y curl bash && \
    npm install && \
    chmod +x npm app.js && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 7860

CMD ["npm", "start"]
