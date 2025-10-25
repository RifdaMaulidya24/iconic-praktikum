FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install -g @ionic/cli
RUN npm install
COPY . .
RUN ionic build
EXPOSE 8100
CMD ["ionic", "serve", "--external", "--no-open", "--host=0.0.0.0"]
