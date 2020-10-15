from tkinter import *
import mysql.connector

cnx = mysql.connector.connect(user='user1',
                              password='password',
                              host='127.0.0.1',
                              database='RVH')
cursor = cnx.cursor()

window = Tk()
window.title("Patient Lookup")
window.geometry('600x250')
# window.resizable(False, False)

top_frame = Frame(window)
top_frame.grid(column=1, row=1, rowspan=3)

Label(window,
      text='Patient Number',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=0, column=0)
Patient_Num = Entry(window, width=15)
Patient_Num.grid(row=0, column=1)

Label(window, text='Patient Name', anchor="e", width=15,
      font="Arial 14 bold").grid(row=1, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=0,
                                                                  column=0)

Label(window,
      text='Care Centre Name',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=2, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=1,
                                                                  column=0)

Label(window,
      text='Nurse in Charge',
      anchor="e",
      width=15,
      font="Arial 14 bold").grid(row=3, column=0)
Label(top_frame, width=15, text='_________________________').grid(row=2,
                                                                  column=0)

# blank
Label(window, text='').grid(row=4, columnspan=4)

# ---- horizontal ----
# frame as a container for treatment entires
Treatment_frame = Frame(window)
Treatment_frame.grid(row=6, columnspan=4)

Label(window, text='Treatment ID', width=15,
      font="Arial 14 bold").grid(row=5, column=0)
Label(Treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=0)

Label(window, text='Treatment Name', width=15,
      font="Arial 14 bold").grid(row=5, column=1)
Label(Treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=1)

Label(window, text='Physician ID', width=15,
      font="Arial 14 bold").grid(row=5, column=2)
Label(Treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=2)

Label(window, text='Date', width=15, font="Arial 14 bold").grid(row=5,
                                                                column=3)
Label(Treatment_frame, width=15, text='___________________').grid(row=1,
                                                                  column=3)

# error message place holder
errorMsg = Label(window, text='', foreground='red')
errorMsg.grid(row=0, column=3)


def searchPatient():

    # clear
    for widget in top_frame.winfo_children():
        widget.destroy()
    for widget in Treatment_frame.winfo_children():
        widget.destroy()
    errorMsg.config(text='')

    pid = Patient_Num.get()

    # validate entry; prevent sql injection
    try:
        int(pid)
        pass
    except ValueError:
        errorMsg.config(text='Not an integer!')
        return

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

    print(cursor.rowcount)

    for row in cursor:
        row_num += 1
        # only update name if the input box is empty
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
        if row[4] != None:
            Label(Treatment_frame, width=15, text=row[4]).grid(row=row_num + 1,
                                                               column=0)
            Label(Treatment_frame, width=15, text=row[5]).grid(row=row_num + 1,
                                                               column=1)
            Label(Treatment_frame, width=15, text=row[6]).grid(row=row_num + 1,
                                                               column=2)
            Label(Treatment_frame, width=15, text=row[7]).grid(row=row_num + 1,
                                                               column=3)


Button(window, text="Look Up Patient", padx=10, pady=6,
       command=searchPatient).grid(row=0, column=2)

window.mainloop()  # event loop

cursor.close()
cnx.close()