import tkinter as tk
from Formularz import *
from menu import*
import mysql.connector
import bcrypt
import os
from tkinter import messagebox
from PIL import ImageTk, Image

class Registration:

    def __init__(self):

        self.password_sql = os.environ.get('MYSQL')

        self.registration = tk.Tk()

        self.registration.title("REJESTRACJA/ LOGOWANIE")

        self.registration.geometry("500x400+50+150")

        self.registration.resizable(False, False)

        self.background_image = Image.open(r"C:\Users\trapi\Desktop\Kurs\Menu\apka.png")

        self.background_image = self.background_image.resize((500, 400), Image.Resampling.LANCZOS)

        self.bg = ImageTk.PhotoImage(self.background_image)

        self.background_label = tk.Label(self.registration, image=self.bg)

        self.background_label.place(relwidth=1, relheight=1)



        self.login = tk.Entry(self.registration, width=20, font="Arial 12", bd=3, background="LightYellow2")

        self.login.place(x=195, y=103)

        self.password = tk.Entry(self.registration, width=20, font="Arial 12", show='•', bd=3,
                                 background="LightYellow2")

        self.password.place(x=195, y=133)

        self.login_button = tk.Button(self.registration, text="LOGIN", width=7, font="Arial 12 bold", bd=4,
                                      background="LightCyan4", foreground="yellow",
                                      command= self.login_system)

        self.login_button.place(x=220, y=200)

        self.button_registration = tk.Label(self.registration, text="REJESTRACJA", font="Arial 12 bold",
                                            foreground="blue", cursor="hand2")
        self.button_registration.place(x=200, y=270)

        # Dodajemy zdarzenie kliknięcia do napisu
        self.button_registration.bind("<Button-1>", Formular)



        self.registration.mainloop()


        #połączenie do bazy danych
    def user_sql_connection(self):

        self.mydb = mysql.connector.connect(

            host= "localhost",
            user= "root",
            password= self.password_sql,
            database= "user_english",
            auth_plugin="mysql_native_password"
        )

        if self.mydb.is_connected():

            print("Połączenie poprawne z bazą danych MySQL")

        else:
            print("Błąd połączenia")


        #hashowanie hasła
    def hash_password(self, password):

        salt = bcrypt.gensalt()

        hashed_password = bcrypt.hashpw(password.encode('utf-8'), salt)

        return hashed_password


        #logowanie do aplikacji
    def login_system(self):

        log = self.login.get()

        pas = self.password.get()


        if not log or not pas:

            messagebox.showerror("Błąd", "Wszystkie pola muszą być uzupełnione.")
            return

        try:

            self.user_sql_connection()

            cursor = self.mydb.cursor()

            sql = "SELECT haslo, imie, login, email FROM user_english WHERE login = %s"

            cursor.execute(sql, (log,))

            result = cursor.fetchone()

            if result:

                hashed_password = result[0].encode('utf-8')

                user_name = result[1]

                login = result[2]

                email = result[3]

                if bcrypt.checkpw(pas.encode('utf-8'), hashed_password):

                    self.registration.withdraw()

                    self.login.delete(0, tk.END)

                    self.password.delete(0, tk.END)

                    Menu(user_name, login, email, self.registration)

                else:

                    messagebox.showerror("Błąd", "Nieprawidłowe hasło.")

            else:

                messagebox.showerror("Błąd", "Nazwa użytkownika nie istnieje.")

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()


Registration()
