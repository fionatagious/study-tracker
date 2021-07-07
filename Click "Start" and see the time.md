Click "Start" and see the time
- make "start" go to a controller action (w/ method GET) called #new
- #new should redirect to #index with params {start: "1234567890"} (epoch time) 
- render the start time on the page based on the value in params[:start]
- e.g. http://locahost:3000/topics?start={time}


Click "Stop"
- Redirect to a URL containing start & end in params
- See a form offering you to type in the name

Enter language, project, buddy name in form
- See a dropdown of names of all Buddy.all records
- TODO: Figure out how to make a dropdown where the option values 

See number of minutes of stopwatch duration in table

To add a new buddy
- Open 'rails c' and do 'Buddy.create!(name: "Other buddy")'

Params is everything in the URL that isn't used for computing the controller action, PLUS any form data. It's used in a controller.

Session:
- start_time
- end_time
- buddy

Random grab-bag concepts
- Epoch time is # of seconds since Jan 1 1970 UTC