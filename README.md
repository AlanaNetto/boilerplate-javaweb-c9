This is a boilerplate to run java web projects on cloud 9

First Configuration to run your app:

1. Give the permission to execute the file InstallTomcat.sh with the command chmod +x InstallTomcat.sh
2. Run the script using the command ./InstallTomcat.sh
3. Go to the path tomcat/webapps and create a folder with the name of you app
4. Inside you app folder create another folder called WEB-INF
5. Give the permission to execute the file BuildProject.sh with the command chmod +x BuildProject.sh
6. Run the script using the command ./BuildProject.sh
7. Go to Preview > Preview Running Application
8. Change the address bar to the address of your app (https://{your-c9-workspace}-{your-c9-username}.c9users.io/{your-app-name})
