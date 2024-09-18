import tkinter as tk
import bcrypt
from PIL import ImageTk,Image
import random
import mysql.connector
import os
from tkinter import messagebox
import re

class Formular:

    def __init__(self, event):

        self.password_sql = os.environ.get('MYSQL')

        self.formular = tk.Toplevel()

        self.formular.title("FORMULARZ REJESTRACYJNY")

        self.formular.geometry("430x620+350+15")

        self.formular.resizable(False, False)

        self.formular.configure(background="pale goldenrod")

        image = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\arrow_down.png')

        image2 = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\future.png')

        button_width = 60

        button_height = 60

        if hasattr(image2, 'ANTIALIAS'):
            image_2 = image2.resize((button_width, button_height), Image.ANTIALIAS)
        else:
            image_2 = image2.resize((button_width, button_height))


        self.img = ImageTk.PhotoImage(image)

        self.img2 = ImageTk.PhotoImage(image_2)

        tk.Label(self.formular, font="Ravie 16", background="pale goldenrod", foreground="navy",
                 text="5 KROKÓW DO SUKCESU").pack()

        tk.Label(self.formular, image= self.img, width= 50, height=50, background="pale goldenrod").pack()


        # potrzebne dane do założenia konta
        self.name_user_label = tk.Label(self.formular, text="Podaj swoje Imię: ", font="Arial 12 bold",
                                        background="pale goldenrod", foreground="firebrick4")

        self.name_user_label.place(x=20, y=100)

        self.name_user_entry = tk.Entry(self.formular, width=20, font="Arial 12", bd=3,
                                        background="LightYellow2")

        self.name_user_entry.place(x=170, y=100)

        self.login_user_label = tk.Label(self.formular, text="Podaj swój login: ", font="Arial 12 bold",
                                         background="pale goldenrod", foreground="firebrick4")

        self.login_user_label.place(x=20, y=140)

        self.login_user_entry = tk.Entry(self.formular, width=20, font="Arial 12", bd=3,
                                         background="LightYellow2")

        self.login_user_entry.place(x=170, y=140)

        self.question_login_placeholder = tk.Label(self.formular, text="?", background="pale goldenrod",
                                                   font="Arial 13 bold")

        self.question_login_placeholder.place(x=360, y=140)


        self.question_login_placeholder.bind("<Enter>", lambda event: self.show_message(event, "login"))

        self.question_login_placeholder.bind("<Leave>", lambda event: self.hide_message(event, "login"))

        self.password_user_label = tk.Label(self.formular, text="Podaj swoje hasło: ", font="Arial 12 bold",
                                            background="pale goldenrod", foreground="firebrick4")

        self.password_user_label.place(x=20, y=180)

        self.password_user_entry = tk.Entry(self.formular, width=20, font="Arial 12", bd=3,
                                            background="LightYellow2", show='•')

        self.password_user_entry.place(x=170, y=180)

        self.question_password_placeholder = tk.Label(self.formular, text="?", background="pale goldenrod",
                                                      font="Arial 13 bold")

        self.question_password_placeholder.place(x=360, y=180)

        self.question_password_placeholder.bind("<Enter>", lambda event: self.show_message(event, "password"))

        self.question_password_placeholder.bind("<Leave>", lambda event: self.hide_message(event, "password"))

        self.password_return_user_label = tk.Label(self.formular, text="Powtórz hasło: ", font="Arial 12 bold",
                                                   background="pale goldenrod", foreground="firebrick4")

        self.password_return_user_label.place(x=20, y=220)

        self.password_return_user_entry = tk.Entry(self.formular, width=20, font="Arial 12", bd=3,
                                                   background="LightYellow2", show='•')

        self.password_return_user_entry.place(x=170, y=220)

        self.email_user_label = tk.Label(self.formular, text="Podaj email: ", font="Arial 12 bold",
                                         background="pale goldenrod", foreground="firebrick4")

        self.email_user_label.place(x=20, y=260)

        self.email_user_entry = tk.Entry(self.formular, width=20, font="Arial 12", bd=3,
                                         background="LightYellow2")

        self.email_user_entry.place(x=170, y=260)

        # zmienna do przechowywania tekst captcha
        self.captcha_text = ''

        # tworzymy pole do rysowania captcha
        self.captcha_canvas = tk.Canvas(self.formular, width=200, height=80, background="grey40")

        self.captcha_canvas.place(x=20, y=320)

        # Generowanie CAPTCHA
        self.generate_captcha()

        self.code_text = tk.Label(self.formular, text="PRZEPISZ KOD Z OBRAZKA:", font="Arial 10 bold",
                                  background="pale goldenrod", foreground="firebrick4")
        self.code_text.place(x=230, y=310)

        self.code_entry = tk.Entry(self.formular, width=15, font="Arial 10", bd=3, background="LightYellow2")

        self.code_entry.place(x=240, y=340)

        self.code_button = tk.Button(self.formular, text="SPRAWDŹ", font="Arial 10 bold",
                                     foreground="black", background="grey62", width=10,
                                     command=self.check_captcha)
        self.code_button.place(x=250, y=380)

        # wyświetl czy kod jest poprawny
        self.result_code_label = tk.Label(self.formular, font="Arial 10", foreground="red",
                                          background="pale goldenrod")

        self.result_code_label.place(x=250, y=430)


        tk.Label(self.formular, font="Ravie 16", background="pale goldenrod", foreground="navy",
                 text="JESZCZE TYLKO TU").place(x= 90, y=450)

        tk.Label(self.formular, image=self.img, width=50, height=50, background="pale goldenrod").place(x=190, y=480)

        self.register_button = tk.Button(self.formular, image= self.img2, background="white", bd= 4,
                                         command=self.register_user)
        self.register_button.place(x= 185, y=530)

        self.formular.mainloop()

    def show_message(self, event, field):

        global y_position, new_text

        if field == "login":

            new_text = "Login min 5 znaków"

            y_position = 140

        elif field == "password":

            new_text = '''Hasło min 8 znaków, min 1 znak specjalny,
                        min 1 wielka litera'''

            y_position = 180

        # Przyjęcie arbitralnej szerokości znaku
        text_width = len(new_text) * 2

        # Wysokość dodatkowego tekstu
        text_height = 20

        placeholder = getattr(self, f"question_{field}_placeholder")

        # Zmiana tekstu po najechaniu myszką
        placeholder.config(text=new_text, font="Arial 8")

        # Rozszerzenie okna
        self.formular.geometry(f"{430 + text_width}x{500 + text_height}+350+15")

        # Ustawienie etykiety z komunikatem
        placeholder.place(x=360, y=y_position)

    def hide_message(self, event, field):

        global y_position

        if field == "login":

            y_position = 140

        elif field == "password":

            y_position = 180

        placeholder = getattr(self, f"question_{field}_placeholder")

        # Przywrócenie pierwotnego tekstu
        placeholder.config(text="?", font="Arial 13 bold")

        # Przywrócenie pierwotnego rozmiaru okna
        self.formular.geometry("430x620+350+15")

        # Ustawienie pierwotnej pozycji
        placeholder.place(x=360, y=y_position)

    def generate_captcha(self):

        # Tworzymy ciągi możliwych znaków
        upper_case_letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

        lower_case_letters = 'abcdefghijklmnopqrstuvwxyz'

        digits = '0123456789'

        all_characters = upper_case_letters + lower_case_letters + digits

        self.captcha_text = ''.join(random.choices(all_characters, k=6))

        # wybieramy losowe conajmniej 3 indeksy do przekreślenia
        indexes_to_strike = random.sample(range(6), min(3, len(self.captcha_text)))

        # przekreślamy wybrane
        modified_text = ''

        for i, char in enumerate(self.captcha_text):

            if i in indexes_to_strike:

                modified_text += char.upper() if char.islower() else char

            else:

                modified_text += char

        # Wyczyszczenie poprzedniej CAPTCHA
        self.captcha_canvas.delete("all")

        # Rysowanie przekreślonej CAPTCHA
        x = 20

        for i, char in enumerate(modified_text):

            y = random.randint(20, 50)

            font_size = random.randint(18, 24)

            font = ('Helvetica', font_size)

            # Ustalanie wariantu wielkości litery na podstawie jej właściwego wariantu w tekście CAPTCHA
            if self.captcha_text[i].isupper():

                char = char.upper()

            elif self.captcha_text[i].islower():

                char = char.lower()

            self.captcha_canvas.create_text(x, y, text=char, font=font, fill='black')

            # Przekreślenie litery
            if char.isalpha():

                # strike_through =  i in indexes_to_strike
                strike_through = i in indexes_to_strike

                if strike_through:
                    # Linia przekreślenia
                    self.captcha_canvas.create_line(x - 10, y - 5, x + 10, y + 5, fill='red', width=3)

            x += 30

    def check_captcha(self):

        entered_text = self.code_entry.get()

        # Utwórz listę wszystkich możliwych kombinacji wprowadzonego tekstu
        possible_texts = [entered_text, entered_text.upper(), entered_text.lower(), entered_text.capitalize()]

        if any(text == self.captcha_text for text in possible_texts):

            print(f'kod właściwy: {self.captcha_text}')

            print(f"kod z entry: {entered_text}")

            self.result_code_label.config(text="BRAWO!!!")

            self.code_entry.delete(0, tk.END)

        else:

            print(f'kod właściwy: {self.captcha_text}')

            print(f"kod z entry: {entered_text}")

            self.result_code_label.config(text="ZŁY KOD!!!")

            self.code_entry.delete(0, tk.END)

            self.generate_captcha()


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


        #metoda hashująca hasło
    def hash_password(self, password):

        salt = bcrypt.gensalt()

        hashed_password = bcrypt.hashpw(password.encode('utf-8'), salt)

        return hashed_password


        #weryfikuje czy podane hasło pasuje do hashowanego
    def check_password(self, hashed_password, user_password):

        return bcrypt.checkpw(user_password.encode('utf-8'), hashed_password)


        # metoda do sprawdzenia poprawnych danych
    def inputs_data(self, name, log, pas, pas_return, email):

        current_tekst = self.result_code_label.cget("text")

        print(f"{email}")

        if not name or not log or not pas or not pas_return or not email\
        or not current_tekst == "BRAWO!!!":

            messagebox.showerror("Błąd", "Wszystkie pola muszą być wypełnione.")

            return False

        if pas != pas_return:

            messagebox.showerror("Błąd", "Hasła nie są identyczne.")

            return False

        if len(log) < 5:

            messagebox.showerror("Błąd", "Login za krótki.")

            return False

        if len(pas) < 8 or not re.search(r"[A-Z]", pas) or not re.search(r"\W", pas):

            messagebox.showerror("Błąd", "Hasło nie spełnia wymogów")

            return False

        if '@' not in email or '.' not in email.split('@')[-1]:

            messagebox.showerror("Błąd", "Nie poprawny adres email")

            return False

        try:

            self.user_sql_connection()

            cursor = self.mydb.cursor()

            sql = "SELECT * FROM user_english WHERE login = %s OR email = %s"

            cursor.execute(sql, (log, email))

            result = cursor.fetchone()

            if result:

                messagebox.showerror("Błąd", "Nazwa użytkownika lub email już istnieje.")

                return False

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return False

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()

        return True


        #metoda zappisu danych użytkownika do bazy
    def register_user(self):

        name = self.name_user_entry.get()

        log = self.login_user_entry.get()

        pas = self.password_user_entry.get()

        pas_return = self.password_return_user_entry.get()

        email = self.email_user_entry.get()


        if self.inputs_data(name, log, pas, pas_return, email):

            hashed_password = self.hash_password(pas)

            try:

                self.user_sql_connection()

                cursor = self.mydb.cursor()

                sql = "INSERT INTO user_english (imie, email, login, haslo) VALUES (%s, %s, %s, %s)"

                values = (name, email ,log, hashed_password)

                cursor.execute(sql, values)

                self.mydb.commit()

                messagebox.showinfo("Sukces", "Użytkownik zarejestrowany pomyślnie.")

            except mysql.connector.Error as err:

                messagebox.showerror("Błąd", f"Error: {err}")

            finally:

                if self.mydb.is_connected():

                    cursor.close()

                    self.mydb.close()

            self.name_user_entry.delete(0, tk.END)

            self.login_user_entry.delete(0, tk.END)

            self.password_user_entry.delete(0, tk.END)

            self.password_return_user_entry.delete(0, tk.END)

            self.email_user_entry.delete(0, tk.END)