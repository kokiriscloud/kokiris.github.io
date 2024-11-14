https://github.com/cstate/cstate?tab=readme-ov-file#getting-started-

# 

## Méta-données possible:

title: New Pipeline Rollout
date: 2019-10-05 16:24:00 
resolved: true
resolvedWhen: 2019-10-05 16:58:00 # date de résolution
severity: disrupted
affected: liste liée à la liste « systems »

## Détails de méta-données

severity :
* down
* disrupted
* notice

## Nouvelle incident

${TITLE}
${DATESTART} format "2024-11-14 10:35:00" date  +"%Y-%m-%d %H:%M"
${SEVERITY} down or disrupted or notice
${AFFECTED}



# cState Site v5.0

This is the default cState status page website directory/folder.

* Example site repository link (you are here): https://github.com/cstate/example
* Main cState source code repository: https://github.com/cstate/cstate

## Are you updating? Use these commands

Download your site with all the directories. `git clone --recursive <your repo link goes here>`

Update the cState theme submodule. `git submodule foreach git pull origin master`

In the parent directory, type `hugo serve`. Check to see if everything is working.

Then do `git add -A; git commit -m "Update cState"; git push origin <branch, probably main or master>`. Your status page is now updated and uploaded.


## For maintainers (probably not for you)

Maintainers need to update both cstate/cstate and cstate/example for each new version.

Download this repo with all the directories. `git clone --recursive -b master https://github.com/cstate/example.git`

Add your changes from cstate/cstate's exampleSite folder.

Update the cState theme submodule. `git submodule foreach git pull origin master`

Then push `git add -A; git commit -m "Update cState vX.X.X"; git push origin master`.

## License

MIT © Mantas Vilčinskas


