# Use a imagem oficial do Golang como base
FROM golang:1.17

# Configuração do diretório de trabalho dentro do contêiner
WORKDIR /go/src/app

# Copia o código fonte para o contêiner
COPY . .

# Compila o código Go dentro do contêiner
RUN go build -o myapp

# Comando a ser executado quando o contêiner for iniciado
CMD ["./myapp"]
