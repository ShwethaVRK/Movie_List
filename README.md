# Movies-List
Movies List is a IMDB.com like website with basic CRUD and movie listing.

Settings to be configured to run the Application :
There are two app here, (1) - Main MVC Web Application (2) WebAPI Service to support Web Application

Steps :
1. Go to the MoviesStore.Web MVC Application and open the Web.config file.
   Change the key="MovieService" value to WEBAPI hosted URL value :
   <add key="MovieService" value="http://localhost:8002/" />
   
2. Create a database with your own defined name and execute the MoviesStore.sql file.
  
3. Go to the MoviesStore.Service.WebAPI an WEBAPI application and open ConnectionStrings.config file.
   Provide the database details.

4. Start both app and application will start working.



   
   
 
