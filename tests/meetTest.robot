
*** Settings ***
#contient les instructions pour importer des fichiers de bibliothèque ou de ressources externes.
Library     SeleniumLibrary

*** Variables ***
#contient les variables globales partagées par toutes les fonctions du script.


*** Keywords ***
#contient toutes les fonctions définies par l'utilisateur.


*** Test Cases ***
#contient les fonctions qui seront exécutées au lancement du script.
Test de la page d'acceuil google meet
    Open Browser    http://meet.google.com  chrome
    Page Should Contain    Google
    Close Browser