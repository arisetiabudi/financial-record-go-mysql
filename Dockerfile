FROM golang:1.25.5-alpine
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY ..
RUN go bulid -o app .
EXPOSE 8000
CMD ["./app"]