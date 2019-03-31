# Brasil TTS - Tema para GRUB

<br></br>

#
`# Uncomment and set to the desired menu colors.  Used by normal and wallpaper`
`# modes only.  Entries specifiedasforeground/background.`

> Mudar as cores do menu do GRUB

#### GRUB, ao estilo de cores da bandeira do **Brasil:**

````
GRUB_COLOR_NORMAL="blue/black"
GRUB_COLOR_HIGHLIGHT="cyan/yellow"
````

<br></br>

#
### Atenção:

`# Uncomment one of them for the gfx desired, a image background or a gfxtheme`

 > Para o seu HD encriptado, não use o papel de parede dentro de pasta, que está contida na partição encriptada, como: /usr/share/grub/
 
 Caso você coloque o papel de parede do GRUB em: "/usr/share/grub" ou, outra qualquer dentro da partição encriptada, o GRUB pedirá senha, só para mostrar o menu. E depois, terá que digitar a senha novamente, para iniciar o sistema.
 
 #### Para que isso não ocorra:
 
 > Coloque o papel de parede em /boot

    GRUB_BACKGROUND="/boot/background/brasiltts-8bits-grub.tga"

#### Faça essa mesma lógica para temas, exemplo:

    GRUB_THEME="/boot/grub/themes/archlinux/theme.txt"


<br></br>

#
> Após você **salvar** o arquivo: **/etc/default/grub**

#### Atualize o GRUB:

    sudo grub-mkconfig -o /boot/grub/grub.cfg

<br></br>

Pronto, tudo certo: tema configurado ;)
#

<br></br>

```
┏┓
┃┃╱╲ nesta
┃╱╱╲╲ casa
╱╱╭╮╲╲ todos
▔▏┗┛▕▔ usam
╱▔▔▔▔▔▔▔▔▔▔╲
LINUX
╱╱┏┳┓╭╮┏┳┓ ╲╲
▔▏┗┻┛┃┃┗┻┛▕▔
```

###### - Fatality
###### - Linux Wins







