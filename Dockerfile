FROM node:23-slim

RUN apt-get update && apt-get install -y g++ && apt-get clean

WORKDIR /app

COPY . .

RUN npm install
RUN npm install --prefix frontend
RUN npm run build --prefix frontend

RUN g++ backend/p1.cpp -o backend/p1 && \
    g++ backend/p2.cpp -o backend/p2 && \
    g++ backend/p3.cpp -o backend/p3 && \
    g++ backend/p4.cpp -o backend/p4 && \
    g++ backend/p5.cpp -o backend/p5 && \
    chmod +x backend/p*

EXPOSE 8080

CMD ["npm", "start"]