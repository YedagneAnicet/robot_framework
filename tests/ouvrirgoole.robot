
*** Settings ***
#contient les instructions pour importer des fichiers de bibliothèque ou de ressources externes.
Library     SeleniumLibrary

*** Variables ***
#contient les variables globales partagées par toutes les fonctions du script.
${EMAIL}        yedagneanicet@gmail.com
${PASSWORD}     *************

*** Keywords ***
#contient toutes les fonctions définies par l'utilisateur.


*** Test Cases ***
#contient les fonctions qui seront exécutées au lancement du script.
Connexion Facebook
   Open Browser      https://www.facebook.com      chrome
   Input Text        name:email                    ${EMAIL}
   Input Password    name:pass                     ${PASSWORD}
   Click Element     name:login
   Close Browser