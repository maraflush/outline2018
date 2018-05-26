Je me suis apercu que le parametre etait inverse ds la lib.
il est bien indique que le parmetre 1 est alloue a la synchro pal
mais le code de replay doit etre ntsc.
En consequence, le registre X doit être initialisé comme suit dans le
fichier crt0.s :
X = 0 => Pal
X = 1 => Ntsc

mara

PS : merci glafouk pour tous les tests que nous avons fait le 13/04/2018 !!
