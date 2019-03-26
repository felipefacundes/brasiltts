# Brasil TTS

Brasil TTS é um conjunto de sintetizadores de voz, em **português do Brasil**, que lê telas para portadores de deficiência visual. Transforma texto em áudio, permitindo que pessoas cegas ou com baixa visão tenham acesso ao conteúdo exibido na tela. Embora o principal público-alvo de sistemas de conversão texto-fala – como o Brasil TTS – seja formado por pessoas com deficiência visual, esse tipo de programa pode ser usado por pessoas com dislexia e outras dificuldades de leitura, pessoas com deficiência severa de fala, bem como por crianças pré-alfabetizadas. Além de ser uma ferramenta de tecnologia assistiva, sintetizadores de voz podem ter ainda aplicações pedagógicas e de entretenimento.
Está sob a égide da **licença**:
### GPLv3
> Mantenedor: Felipe Facundes
###### E-Mail: felipe.facundes@gmail.com
###### Telegram: https://t.me/comandos_linux
#
### Instalação:

    git clone https://github.com/felipefacundes/brasiltts
    cd brasiltts
    
- **Você poderá executar:**
``` 
chmod +x INSTALL.sh
yes s | sh INSTALL.sh
```
##### Ou, manualmente:
``` 
sudo cp *tts-generic.conf /etc/speech-dispatcher/modules/
sudo cp speechd.conf /etc/speech-dispatcher/
```     
#
### Instalação de Dependências:

- **As Dependências São:**
  - espeak-ng
  - speech-dispatcher
  - orca
  - onboard

#
- **Instalação pelo ArchLinux**
```
sudo pacman -S espeak-ng speech-dispatcher orca onboard
```
```
sudo pacman -U mbrola-3.0.1h-5-x86_64.pkg.tar.xz
sudo pacman -U mbrola-voices-br1-971105-5-any.pkg.tar.xz
sudo pacman -U mbrola-voices-br4-1-2-any.pkg.tar.xz
sudo pacman -U mbrola-voices-br3-000119-4-any.pkg.tar.xz
```
#
- **Pelo Debian e derivados:**
  - Caso não tenha o mbrola no repositório.
  - Deverá primeiro, converter os pacotes ".tar.xz" em ".deb"
  - Use o comando alien para converter
  - Após, é só instalar com o comando dpkg
  - **Renomeie** os arquivos ".pkg.tar.xz"
  - Para ".pkg.tar.gz"

```
fakeroot alien -d "nome".pkg.tar.gz
sudo dpkg -i *.deb
```

#### Fedora e derivados: o alien também gera pacotes ".rpm"
    fakeroot alien -r "nome".pkg.tar.gz

#
### Finalizando Instalação

- Feche tudo e mate a sessão
```
pkill -9 -u $USER
```
- Inicie o X e digite no terminal
```
orca -s
```
- Na **guia: "Voz"**.
- Configure, escolhendo uma das três vozes brasileiras, conforme sua preferência:
  - Sistema de fala: **Speech Dispatcher**
  - Sintetizador de fala: **angelotts / ou, maricotatts / ou, nordestinotts**
  - Personagem: **Voz padrão para angelotts (pt) / maricotatts (pt) / nordestinotts (pt)**

#
### Caso o onboard não esteja iniciando, junto com o sistema. Inclua no ~/.xinitrc
``` 
onboard --not-show-in=GNOME,GNOME-Classic:GNOME --startup-delay=3.0 &
```     
- Ou
``` 
cp /etc/xdg/autostart/onboard-autostart.desktop ~/.config/autostart/
```
### Ativar o onboard é necessário, para que programas que tenham o recurso de acessibilidade, ###
### como o OKULAR, possam funcionar corretamente. Não deixe de ativar o onboard! ;) ###
###### Angelo é o nome do meu falecido Pai. AngeloTTS é uma homenagem a João Angelo. Verdadeiro Pai Herói. ######
###### Maricota é o apelido da minha Mãe, MaricotaTTS é uma homenagem a Dona Maria. "Pequena", grande guerreira. ######
###### NordestinoTTS é uma homenagem, ao povo brasileiro nordestino. Pessoas maravilhosas, hospitaleiras e alegres. ######
##### Vejam também, Guglina TTS, o sintetizador de voz, que usa a API de conversão de texto em fala do Google Tradutor ##### 
###### https://github.com/felipefacundes/guglinatts ######
#### Todo os sintetizadores, usam a licença: GPLv3 ####
