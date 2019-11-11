# -*- coding: utf-8 -*-
require './cv'
require './myCV_en'

cv = CV::Top.new()    
cv.language = :fr

cv.firstName="Nicolas"
cv.lastName="Morey-Chaisemartin"
cv.title="Développeur Linux Confirmé"
cv.address="36 Impasse de la Terrasse"
cv.city="74190 Passy"
cv.mobile="+33 6 95 20 31 74"
cv.email="nicolas@morey-chaisemartin.com"
cv.homepage="nicolas.morey-chaisemartin.com"
cv.extras << "29/06/1986"

#############
# Exp Pro
#############

entry = CV::Entry.new()
entry.date="Mars 2017!BR!à Aujourd'hui"
entry.title="Développeur Linux Confirmé"
entry.company="SUSE"
entry.city="Home Office"
entry.details << "Centralisation, packaging et support de librairies !B!Infiniband!B!, !B!Omni-Path!B! et HPC"
entry.details << "Développement et support des modules !B!Kernel!B! RDMA"
entry.details << "Développement de tests pour valider l'ensemble Software/Hardware."
entry.details << "Développement de features client, et support."
entry.details << "Environnement: RPM, Infiniband, Omni-Path, Reseau, MPI, !B!Kernel!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Avril 2015!BR!à Mars 2017"
entry.title="Responsable solutions réseaux"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Conception d'une solution SmartNIC 80Gb/s."
entry.details << "Portage et optimisation d'!B!OpenDataPlane!B! pour le MPPA."
entry.details << "Gestion d'une équipe de 5 personnes"
entry.details << "Support d'interfaces haut débit PCI, Ethernet"
entry.details << "Responsable de tous les drivers Linux: !B!PCI, netdev, AF ALG, crypto, RoCE, DPDK!B!"
entry.details << "Environnement: MPPA, C, ODP, Ethernet, PCI, !B!Drivers Linux!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Juillet 2013!BR!à Avril 2015"
entry.title="Responsable solutions vidéos"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Design et développement d'un coeur d'encodage !B!HEVC!B! flexible et optimisé pour le MPPA."
entry.details << "Gestion du projet et d'une petite équipe en charge du développement."
entry.details << "Portage, parallélisation et optimisation de l'encodeur 4K !B!HEVC!B! MainConcept sur MPPA."
entry.details << "Environnement: MPPA, C, C++, Ruby, Programation parallèle, HEVC."
cv.professional << entry


entry = CV::Entry.new()
entry.date="Juillet 2009!BR!à Juillet 2013"
entry.title="Architecte et développeur logiciel embarqué"
entry.company="Kalray"
entry.city="Montbonnot"
entry.details << "Développement de système d'exploitation et de librairies runtime pour l'embarqué."
entry.details << "Développement d'un !B!compilateur!B! front-end pour un langage de Streaming hautement parallèle."
entry.details << "Développement d'outils de !B!cadencement, placement et routage!B! pour des applications de Streaming."
entry.details << "Responsable de l'!B!intégration continue!B! sous Git/Hudson."
entry.details << "Co-Administrateur IT."
entry.details << "Gestion de projet !B!AGILE/Scrum!B!."
entry.details << "Environnement; !B!Systèmes embarqués!B!, MPPA, C, Assembleur, Ruby, Programation parallèle."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2008!BR!à Juillet 2009"
entry.title="Ingénieur en Systèmes embarqués"
entry.company="Coframi"
entry.city="Meylan"
entry.details << "Mission chez Bull dans l'équipe R\&D HPC: Expert !B!Infiniband!B!."
entry.details << "Développement d'!B!algorithmes de routage!B! fault-tolerant (dépot de brevets)."
entry.details << "Mise en place de solution de monitoring réseau pour grand clusters."
entry.details << "Environnement: Infiniband, Routage, QoS, !B!Drivers Linux!B!, !B!HPC!B!."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Mai 2008!BR!à Septembre 2008"
entry.title="Projet de fin d'études et de Master"
entry.company="Northumbria University"
entry.city="Newcastle"
entry.country="UK"
entry.details << "Design et implémentation d'un !B!OS temps-réel!B! pour le Cell Broadband Engine."
entry.details << "Environnement: !B!Multicore!B!, Temps-réel, !B!Scheduling!B!, Synchronisation, C, Assembleur."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Juin 2007!BR!à Aôut 2007"
entry.title="Stagiaire IT"
entry.company="Allibert-Trekking"
entry.city="Montmélian"
entry.details << "Support utilisateur et serveur sur un réseau Mac OS X."
entry.details << "Mise en place d'un !B!système de monitoring!B!."
entry.details << "Développement d'outils de synchronisation entres les outils d'inventaire, de monitoring et d'administration."
entry.details << "Environnement: Mac OS X, Php, Perl, Python, Bash, MySQL, openDirectory."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Janvier 2007"
entry.title="Intervenant Junior-Entreprise"
entry.company="MVA Limited"
entry.city="Grenoble"
entry.details << "Création d'un outil d'extraction de coordonnées GPS depuis Google Maps."
entry.details << "Environnement: !B!Java!B!, Swing."
cv.professional << entry

entry = CV::Entry.new()
entry.date="Octobre 2006"
entry.title="Intervenant Junior-Entreprise"
entry.company="Institut Laue-Langevin"
entry.city="Grenoble"
entry.details << "Portage d'une application de démonstration de cristallographie d'objective-C vers Java."
entry.details << "Environnement: Java, Swing, HTML."
cv.professional << entry

#entry = CV::Entry.new()
#entry.date="Aôut 2003"
#entry.title="Stagiaire"
#entry.company="Xyalis"
#entry.city="Grenoble"
#entry.details << "Réalisation d'un !B!programme de non régression!B! pour toute la gamme des outils Xyalis."
#entry.details << "Environnement: Bash, Tcl, Tk."
#cv.professional << entry

# entry = CV::Entry.new()
# entry.date="Juillet 2001"
# entry.title="Stagiaire"
# entry.company="Xyalis"
# entry.city="Grenoble"
# entry.details << "Développement de scripts de démonstrations d'outils de CAO."
# entry.details << "Intégration d'outils dans une même GUI."
# entry.details << "Démonstration des logiciels de l'entreprise à un salon international de micro-électronique aux USA (DAC)."
# entry.details << "Environnement: Tcl, Tk."
# cv.professional << entry

#############
# Etudes
#############
entry = CV::Entry.new()
entry.date="2008"
entry.title="Ingénieur en informatique"
entry.company="ENSIMAG"
entry.city="Grenoble"
cv.degrees << entry

entry = CV::Entry.new()
entry.date="2008"
entry.title="Master en Systèmes Embarqués"
entry.company="Université de Northumbria"
entry.city="Newcastle"
entry.country="UK"
entry.details << "En parallèle de la dernière année à l'ENSIMAG."
#entry.details << "Année réalisée à Newcastle - Angleterre."
cv.degrees << entry

#############
# Exp Perso
#############

entry = CV::Entry.new()
entry.date="2008!BR!à Aujourd'hui"
entry.title="Participation à des projets Open Source"
entry.details << "Participations au mailing list et au développement de !B!Linux!B!, !B!Git!B!, OpenSM, ODP."
entry.details << "!B!Maintainer!B! des release stables de rdma-core."
entry.details << "Participations ponctuelles sur divers projets: Sick-Beard, RBTools, libdbi..."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2011!BR!à Aujourd'hui"
entry.title="Damage (DAtabase MetA GEnerator)"
entry.details << "Développement d'un ensemble de script de génération de formats intermédiaires."
entry.details << "Permet à partir d'une description YAML, de générer toutes les méthodes de!BR!"+
    " lecture/écriture/modification vers des formats XML/YAML/binaire depuis du C, Java ou Ruby."
entry.details << "Environnement: Ruby, GPL."
cv.personal << entry


entry = CV::Entry.new()
entry.date="2006"
entry.title="Participation au concours IBM sur le Cell Broadband Engine"
entry.details << "Développement d'un framework open-source pour des algorithmes parallèles"+
    " sur un cluster de Cell."
entry.details << "Environnement: C++, sockets."
cv.personal << entry

entry = CV::Entry.new()
entry.date="2005!BR!à 2007"
entry.title="Responsable informatique N'Sigma, Junior Entreprise de l'ENSIMAG"
entry.details << "Administration d'un réseau mixte Linux/Windows."
entry.details << "Participation au chiffrage des contrats N'Sigma."
cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2005"
# entry.title="Réalisation d'un micro-processeur"
# entry.details << "Développement en VHDL d'un micro-processeur 8bits avec carte vidéo sur FPGA."
# cv.personal << entry

# entry = CV::Entry.new()
# entry.date="2004"
# entry.title="Concours national de programmation Prologin"
# entry.details << "Développement d'une IA pour un jeu de stratégie."
# entry.details << "Classé !B!5ème!B!."
# cv.personal << entry

#############
# Skills
#############
infoSkills=[]
skill = CV::Skill.new()
skill.type = "Langages"
skill.content= "!B!C!B!, !B!Ruby!B!, Java, Assembleur, Ada, Php, C++, MPI"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Environnements graphiques"
skill.content="!B!X11!B!, Gtk, Tk, Swing, !B!Qt!B!"
infoSkills << skill

skill = CV::Skill.new()
skill.type = "Outils" # de dévelopmment
skill.content= "Emacs, Netbeans, Eclipse, gcc, !B!gdb!B!" # SQLDevelopper, 
infoSkills << skill

skill = CV::Skill.new()
skill.type="Vidéo"
skill.content="!B!H.265!B!, x265"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Systèmes d'exploitation"
skill.content="!B!Kernel!B!, Programmation concurrentielle, !B!Drivers!B!, Signaux, Packaging RPM"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Gestionnaires de versions"
skill.content="!B!Git!B!, !B!Gitolite!B!, !B!Jenkins!B!, OBS, CVS, SVN, SCCS"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Administration Système"
skill.content="!B!Linux!B!, FreeBSD, Samba, Postfix, Apache, Shell scripting, Bash, Sed, Awk"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Réseau"
skill.content="Routage, TCP/IP, Ethernet, !B!Sockets!B!, QoS, !B!Infiniband!B!, !B!Omni-Path!B!, ODP"
infoSkills << skill

skill = CV::Skill.new()
skill.type="Bases de données"
skill.content="Oracle, MySQL, LDAP, !B!Conception!B!, Optimisation"
infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Conception Logicielle"
# skill.content="!B!UML!B!"
# infoSkills << skill

# skill = CV::Skill.new()
# skill.type="Conception Electronique"
# skill.content="!B!VHDL!B!, Modelsim"
# infoSkills << skill

skill = CV::Skill.new()
skill.type="Outils mathématiques"
skill.content="Matlab, CoinOR, GPLK"
infoSkills << skill

cv.skills["Informatique"] = infoSkills

#############
# Lang
#############
lang= CV::Language.new()
lang.lang = "Anglais"
lang.level = "lu, parlé, écrit"
lang.more = "Score au TOEFL:100/120 - TOEIC: 935/990"
cv.languages << lang


#############
# Brevets
#############
patent= CV::Patent.new()
patent.reference = "WO2011001362"
patent.title = "Procédés et dispositifs destinés à évaluer une efficacité d'interconnexion de réseaux informatiques parallèles sur la base de systèmes de routage statiques"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011151569"
patent.title = "Procédé de routage pseudo-dynamique dans un cluster comprenant des liens de communication statiques et programme d'ordinateur mettant en oeuvre ce procédé"
cv.patents << patent
patent= CV::Patent.new()
patent.reference = "WO2011144848"
patent.title = "Procédé d'optimisation de routage dans un cluster comprenant des liens de communication statiques et programme d'ordinateur mettant en oeuvre ce procédé"
cv.patents << patent

#############
# Other
#############
ot = CV::Other.new()
ot.cat="Loisirs"
ot.more = "Montagne, photographie, voyages, guitare."
cv.other << ot

ot = CV::Other.new()
ot.cat="Sport"
ot.more = "Alpinisme, escalade, randonnée à pied et à ski"
cv.other << ot
# ot = CV::Other.new()
# ot.cat=""
# ot.more = "Ancien pilote deltaplance, membre de l'équipe de France Espoir."
# cv.other << ot

###############
# HTML STUFF
###############
cv.header= "
<table class='header-menu' cellpadding='5' cellspacing='2'>
<td class='header-cell'><a href=' index_fr.html'><img src='fr_flag.jpg' height='30' width='50' alt='FR'></a></td>
<td class='header-cell'><a href='index_en.html'><img  src='uk_flag.jpg' height='30' width='50' alt='EN'></a></td>
<td class='header-cell'><a href='/photos/'>Photos</a></td>
<td class='header-cell'><a href='https://github.com/nmorey/'>Mon GitHub</a></td>
<td class='header-cell'><a href='cv-fr.pdf'> CV</a></td>
</tr></table>"
cv.middleStuff="
                <a href=\"cv-fr.pdf\"> CV PDF en Francais</a><br>
                <a href=\"cv-en.pdf\"> CV PDF en Anglais </a><br><br>
                <a href=\"photos/\">Allez voir mes photos de vacances et randos!!</a><br>
"
cv.footer = @EN_CV.footer

#############
# THE END
#############

@FR_CV = cv

cv.toTeX('cv-fr.tex')
cv.toHTML('index_fr.html')

