@ECHO OFF
git remote add gandi ssh+git://6919303@git.sd3.gpaas.net/default.git
git push gandi master
ssh 6919303@git.sd3.gpaas.net deploy default.git
git remote rm gandi
git remote add github https://github.com/semiographics/rhizomatic-django.git
git push github master
git remote rm github
