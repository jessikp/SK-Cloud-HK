# SK Cloud HK

Salvar os arquivos de URLs ou Links para o Google Drive.

## Procedimentos :

* Abrir o [Google Dev Credentials Site](https://console.developers.google.com/apis/credentials).
* Criar um Projeto, O nome e você pode definir do seu jeito.
* Ativer - "Enable" [Drive API](https://console.developers.google.com/apis/library/drive.googleapis.com)
* Na Página De Credenciais [Credentials Page](https://console.developers.google.com/apis/credentials) Click em  `Create Credentials` e depois Click `OAuth Client ID`.
* Seleccione a Aplicação Web.- Select Web Application.
* Em `Authorized JavaScript origins` indique o seu nome de domínio site ou IP, o que estiver a usar para esta aplicação.
* Na `Authorized redirect URIs` indique o seu nome de domínio site ou IP em `/api/oauth/google/callback` ao completa.
* Exemplo no caso de : `https://nome.herokuapp.com` - ficarar assim : `https://nome.herokuapp.com/api/oauth/google/callback`
* Copie suas informações.
* Você vai precisar destas 3 etapas quando estiver no site do Heroku e fazendo o deploy usando o botão abaixo.

## Deploy to Heroku - Implantar ou Complementar ao heroku.

Antes de iniciar esse processo siga os passos acima como explicados ou não funcionará.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/jessikp/SK-Cloud-HK)

## Fontes : thanks!!

-- [MIT © Dhaval Mehta](https://github.com/dhaval-mehta)
** Ideia do projeto : https://github.com/cloud-transfer/cloud-transfer-backend

--  [Parveen Bhadoo Official](https://github.com/ParveenBhadooOfficial)
** Fonte original do codigo moderno : https://github.com/ParveenBhadooOfficial/Bhadoo-Cloud-Drive

