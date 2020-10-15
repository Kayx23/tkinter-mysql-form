from tkinter import *
import mysql.connector

# connect to database
cnx = mysql.connector.connect(user='user1',
                              password='password',
                              host='127.0.0.1',
                              database='RVH')

# main cursor
cursor = cnx.cursor()

# cursor created for bound checks
cursor_row_count = cnx.cursor()

# get the number of patients by fetching all
cursor_row_count.execute('SELECT * FROM RVH.Patients')
cursor_row_count.fetchall()
max_row = cursor_row_count.rowcount

# UI
window = Tk()
window.title("RVH Patient Lookup")
window.geometry('600x250')

# frame for the three labels under patient number
top_frame = Frame(window)
top_frame.grid(column=1, row=1, rowspan=3)

# search key
Label(window,
      text='Patient Number',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=0, column=0)
Patient_Num = Entry(window, width=15)
Patient_Num.grid(row=0, column=1)

# Patient Name
Label(window, text='Patient Name', anchor="e", width=15,
      font="Arial 14 bold").grid(row=1, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=0,
                                                                  column=0)
# Care Centre Name
Label(window,
      text='Care Centre Name',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=2, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=1,
                                                                  column=0)
# Nurse in Charge
Label(window,
      text='Nurse in Charge',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=3, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=2,
                                                                  column=0)
# blank row for a visual break
Label(window, text='').grid(row=4, columnspan=4)

# ---- horizontal treatment record(s) ----
# frame for label widgets
treatment_frame = Frame(window)
treatment_frame.grid(row=6, columnspan=4)

# Treatment ID
Label(window, text='Treatment ID', width=15,
      font="Arial 14 bold").grid(row=5, column=0)
Label(treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=0)
# Treatment Name
Label(window, text='Treatment Name', width=15,
      font="Arial 14 bold").grid(row=5, column=1)
Label(treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=1)
# Physician ID
Label(window, text='Physician ID', width=15,
      font="Arial 14 bold").grid(row=5, column=2)
Label(treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=2)
# Date
Label(window, text='Date', width=15, font="Arial 14 bold").grid(row=5,
                                                                column=3)
Label(treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=3)

# Error message place holder
errorMsg = Label(window, text='', foreground='red')
errorMsg.grid(row=0, column=3)


def searchPatient():
    """This function is called when the user clicks on the button to loop up a patient. 
    It queries the database and populate the relevant labels in top_frame and treatment_frame.

    Some patients have no care centres because they are outpatients. 
    Some patients have no treatment records. 
    """
    # clear previous info
    for widget in top_frame.winfo_children():
        widget.destroy()
    for widget in treatment_frame.winfo_children():
        widget.destroy()
    errorMsg.config(text='')

    # get user input
    pid = Patient_Num.get()

    # validate entry for an integer
    try:
        int(pid)
        pass
    except ValueError:
        errorMsg.config(text='Not an integer!')
        return

    # check bounds
    # note: this makes sense because the pid was auto incremented
    if int(pid) > max_row or int(pid) < 1:
        errorMsg.config(text='Out of bound! Max is ' + str(max_row))

    query = (
        """SELECT pid, Patients.name AS Patient_Name, Care_centres.name AS Care_Centre_Name, 
                Nurses.name AS Nurse_in_Charge_Name, tid, treatment_name, physician_id, Date
                FROM RVH.Patients
                LEFT JOIN RVH.Care_centres ON Patients.care_centre_id = Care_centres.cid
                LEFT JOIN RVH.Nurses ON Care_centres.nurse_charge_id = Nurses.nid
                LEFT JOIN RVH.Treatments ON Patients.pid = Treatments.patient_id
                LEFT JOIN RVH.Physicians ON Treatments.physician_id = Physicians.phid
                WHERE pid =""" + pid)
    cursor.execute(query)

    row_num = 0

    for row in cursor:
        row_num += 1
        # update the top_frame labels only once
        # since top_frame to treatment_frame is one-to-many
        if row_num == 1:
            Label(top_frame, width=15, text=row[1]).grid(row=1, column=1)
            if row[2] != None:
                Label(top_frame, width=15, text=row[2]).grid(row=2, column=1)
            else:
                Label(top_frame, width=15, text='').grid(row=2, column=1)
            if row[3] != None:
                Label(top_frame, width=15, text=row[3]).grid(row=3, column=1)
            else:
                Label(top_frame, width=15, text='').grid(row=3, column=1)
        # update treatment_frame
        if row[4] != None:
            Label(treatment_frame, width=15, text=row[4]).grid(row=row_num + 1,
                                                               column=0)
            Label(treatment_frame, width=15, text=row[5]).grid(row=row_num + 1,
                                                               column=1)
            Label(treatment_frame, width=15, text=row[6]).grid(row=row_num + 1,
                                                               column=2)
            Label(treatment_frame, width=15, text=row[7]).grid(row=row_num + 1,
                                                               column=3)


# Button
Button(window, text="Look Up Patient", padx=10, pady=6,
       command=searchPatient).grid(row=0, column=2)

window.mainloop()  # event loop

cursor.close()
cnx.close()