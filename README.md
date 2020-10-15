# tkinter-mysql-form
A form built in Tkinter that connects with the MySQL server. The db account was only granted the SELECT priviledge. 

![demo](https://user-images.githubusercontent.com/39619599/96099444-3fedba80-0ea1-11eb-92c0-747e8adb93de.gif)


### Notes to self
* Can't call mysql.connector.cursor.fetchall() twice; it fetches all the rows yet not fetched from a query result. If you've already fetched once there's nothing left. 
* Workaround to get total row count and loop through the rows again would be to create two cursors - do fetchall() for the row count cursor and loop through rows with the other one.