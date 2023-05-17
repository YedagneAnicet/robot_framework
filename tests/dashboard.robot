
*** Settings ***
#contient les instructions pour importer des fichiers de bibliothèque ou de ressources externes.
Documentation       Test sur le Dashboard de CORE UI Angular
Library             SeleniumLibrary
Library             Screenshot

*** Variables ***
#contient les variables globales partagées par toutes les fonctions du script.


*** Keywords ***
#contient toutes les fonctions définies par l'utilisateur.
Ouvre la page d'accueil
    Open Browser    https://coreui.io/demos/angular/4.2/free/#/dashboard       chrome
    Title Should Be    CoreUI Free Angular Admin Template
    Sleep    2
    Click Element    xpath://*[@id="sidebar"]/perfect-scrollbar/div/div[1]/c-sidebar-nav/c-sidebar-nav-group[2]/a
    Click Element    xpath://*[@id="sidebar"]/perfect-scrollbar/div/div[1]/c-sidebar-nav/c-sidebar-nav-group[2]/c-sidebar-nav/c-sidebar-nav-link[1]/a
    Sleep    5
    Capture Page Screenshot     accueil.png


*** Test Cases ***
#contient les fonctions qui seront exécutées au lancement du script.
Tableau de board
    Ouvre la page d'accueil
    [Teardown]      Close Browser