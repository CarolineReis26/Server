# Automação Web

Automação de testes Web

Padrões para esse projeto:

Linguagem de programação:
    [(Ruby)](https://www.ruby-lang.org/)

Linguagem de escrita dos cenários de teste:
    [(Cucumber/Gherkin-pt)


Pattern:
    [(PageObject)](https://martinfowler.com/bliki/PageObject.html)

# Configuração
## Ruby
Ruby é...
Uma linguagem dinâmica, open source com foco na simplicidade e na produtividade. Tem uma sintaxe elegante de leitura natural e fácil escrita.


  Faça o download da versão 2.4.4
```
  https://rubyinstaller.org/downloads/
```

  Instalar no diretório 'C:\Ruby23-x64'

  Feche o console, abra novamente, digite 'ruby -v' e devera visualizar o seguinte retorno:

```
  ruby 2.4.4p296 (2018-03-28 revision 63013) [x64-mingw32]
```

  Caso você receba a mensagem de erro 'ruby não é reconhecido como um comando interno ou externo, um programa operável ou um arquivo em lotes', você deve incluir o endereço da instalação do Ruby nas suas variáveis de ambiente com o comando:
```
  setx PATH "%PATH%;C:\Ruby23-x64\bin"
```

  Feche o console, abra novamente, digite 'ruby -v' para confirmar a versão abaixo:
```
  ruby 2.4.4p296 (2018-03-28 revision 63013) [x64-mingw32]
```

##  Para instalar o DevKit 64bits:

  Faça o Download em:

```
  http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe
```

  Descompacte no diretório 'C:\Ruby23-x64\devkit'

  Acesse no seu console(CMD) a pasta onde foi instalado o DevKit. EX: C:\Ruby23-x64\devkit

```
  cd C:\Ruby24-x64\devkit
```

  Ainda no console digite:

```
  ruby dk.rb init
```

  Abra o arquivo 'config.yml' que foi gerado, a última linha do arqeuivo deve conter o valor: '-C:/Ruby24-x64', caso nao existe, insira o valor.

  De volta ao console insira o comando:

```
  ruby dk.rb install
```

## Ajustes de SSL

  Para baixar gems do ruby no windows é necessário corrigir um erro de ssl, uma falha no certificado  com extensão ".pem" que vem no pacote Ruby.

  Execute  a sequincia de comandos abaixo no terminal para solucionar essa falha.

```
  gem sources -a http://rubygems.org/
  gem sources -r https://rubygems.org/
  gem sources -u
```

## Instalando o Bundler:

O Bundler é para o mundo do Ruby o que o Ant é para o mundo do Java, ou npm para o mundo do node ou até mesmo o composer tenta ser para o mundo do PHP.
É uma ferramenta de muita utilidade para qualquer projeto, desde os menores e principalmente aos maiores, independente de framework ou qualquer outra coisa.

Pra você utilizado-lo é necessário instalar, utilizando o comando abaixo:

```
  gem install bundler
```

  Ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

  O comando abaixo irá realizar o download e instalação de todas as gems do arquivo GemFile.



  Antes de executar o bundle, vamos baixar uma gem que serve de auxilio na criação do projeto e Configuração:[(Pretest)](https://github.com/Lemon-Studio/pretest)

      gem install pretest

  Agora iremos instalar as dependecias de drivers necessários para execução dos testes.

      pretest environment

  Para utilizar o bundle:

```
  bundle install
```

## Editando variáveis de ambiente:

Acesse a janela de edição de variáveis de ambiente.

Selecione a variável 'Path'

Adicione o valor:

```
  ;C:\Ruby23-x64\bin
```

# Executando testes

Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

    cucumber: comando que inicia execução dos casos de teste.

    chrome=true: sinaliza que desejo executar os testes somente no nvegador Chrome.(É possível verficar os outros         navegadores no arquivo: Web\features\support\hooks.rb)

    features\pasta(arquivo): indica o arquivo feature ou pasta de feaures quer executar

Dentro da pasta do projeto insira o comando no terminal para exexutar todos os testes existentes no projeto:

```
  cucumber chrome=true
```

Para executar uma pasta ou arquivo feature:

```
  cucumber chrome=true features\arquivo.feature
```
Teste
