# Coding Challenge: Playlists

Welcome to the coding challenge.

This challenge will give us an idea about your coding skills. Don't worry if you can't finish all requirements in time. Just tell us how you would proceed.

We're using Rails 4, RSpec 3.5 etc.

In the `csv` folder you find some data files.

## Tasks

- Create a rails application within this repo and commit as usual
- Update the README inside with information on how to work with it if you think that some information might be helpful
- Set up an appropriate data model for the data in the csv files
- Create an import for the users
- Create a simple controller/view to show a list of users
- Create a simple REST API endpoint that returns a list of users as json. The REST API can be treated as internal only so no authentication/authorization is needed here.
- Create an import for the playlists and mp3
- Extend the users view to also show the playlists each user has


-------------------------------------------
Brief description of how to see the results
-------------------------------------------
- Create an import for the users. Extend the users view to also show the playlists each user has

See the /users page. Upload the .csv file with user list. 
The page then shows the table with users and the playlists each user has.



- Create a simple REST API endpoint that returns a list of users as json. The REST API can be treated as internal only so no authentication/authorization
is needed here.

See the /users.json page.



- Create an import for the playlists and mp3

See pages /playlists (upload the file, then it shows playlists with songs) and /mp3s (upload the file, then it shows all mp3s with their data)
