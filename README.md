# tkinter-mysql-form
A form built in Python Tkinter that connects with the MySQL server. The db account was only granted the SELECT priviledge. All data are mock data. 

![demo](https://user-images.githubusercontent.com/39619599/96099444-3fedba80-0ea1-11eb-92c0-747e8adb93de.gif)

### Schema
<img src="https://user-images.githubusercontent.com/39619599/96102257-50ebfb00-0ea4-11eb-9e3e-b3e85932d507.png" width="560" height="380" />

### Notes to self
* Can't call mysql.connector.cursor.fetchall() twice; it fetches all the rows yet not fetched from a query result. If you've already fetched once there's nothing left. 
* Workaround to get total row count and loop through the rows again would be to create two cursors - do fetchall() for the row count cursor and loop through rows with the other one.
