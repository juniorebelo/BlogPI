# Usa a imagem base do Ruby
FROM ruby:3.0.0

# Instala dependências do sistema
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Define o diretório de trabalho
WORKDIR /app

# Copia o Gemfile e Gemfile.lock para evitar reinstalação desnecessária de gems
COPY Gemfile Gemfile.lock ./

# Instala as gems
RUN bundle install

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta 3000
EXPOSE 3000

# Define um comando padrão que apenas mantém o container rodando
CMD ["bash"]
