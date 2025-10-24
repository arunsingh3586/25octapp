FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "node", "src/server.js" ]


#--------------------------------------------------------------------------------------------------------------------
# WORKDIR /app
# COPY . .
# RUN npm install
# COPY . .
# RUN npm run build

# # Stage 2: Nginx serve
# FROM nginx:latest
# COPY --from=build /app/build /usr/share/nginx/html
# EXPOSE 3000
# CMD [ "node", "src/server.js" ]