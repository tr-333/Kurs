from tkinter import messagebox
from Samouczek import*
from Spotkanie import *
from Podroze import*
from Zdrowie import*
from Moda import*
from Praca import*
from Finanse import*
from Jedzenie import*
from Rozrywka import*
from Technologia import*
from Inne import*
from PIL import Image, ImageTk
import tkinter as tk
import requests
import os
from gtts import gTTS
import pygame
import mysql.connector
import re
import bcrypt
import json

class Menu:

    def __init__(self, user_name, login, email, registration_window):

        self.password_sql = os.environ.get('MYSQL')

        self.menu = tk.Toplevel()

        self.menu.title("MENU")

        self.menu.geometry("800x720")

        self.menu.resizable(False, False)

        self.registration_window = registration_window

        # Domyślny tryb jasny
        #self.load_config('config_light.json')
        self.current_login = login

        self.load_theme()

        self.create_widgets(user_name, login, email)

        self.password_trans = os.environ.get('Deepl')

        self.url = "https://api-free.deepl.com/v2/translate"

        pygame.init()

        self.menu.protocol("WM_DELETE_WINDOW", self.logout)

        self.change_save = None

        self.changes_save_pas = None

        self.cancel_change = None

        self.radio_one = None

        self.radio_two = None

        self.menu.mainloop()


        #wczytujemy plik json trybu
    def load_config(self, config_file):

        with open(config_file, 'r') as f:

            config = json.load(f)

        self.bg = config.get('bg')

        self.fg1 = config.get('fg1')

        self.fg2 = config.get('fg2')

        self.fg3 = config.get('fg3')

        self.fg4 = config.get('fg4')  #dodane pod klasę do nauki
        self.fg5 = config.get('fg5')
        self.fg6 = config.get('fg6')
        self.fg7 = config.get('fg7')
        self.fg8 = config.get('fg8')


            #metoda tworząca główne widżety w oknie
    def create_widgets(self, user_name, login, email):

            #linia oddzielająca główne przyciski
        vertical_line = tk.Frame(self.menu, width=5, bg="red")

        vertical_line.place(relx=0.32, rely=0, relheight=2, anchor=tk.CENTER)

            #główne wizdżety okna menu
        image_1 = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\user.png')

        self.user = ImageTk.PhotoImage(image_1)

        self.menu.configure(background=self.bg)

        tk.Label(self.menu, image=self.user, width=65, height=65, background=self.bg).place(x=15, y=10)

        self.name_user = tk.Label(self.menu, font="Arial 12 bold", foreground=self.fg1,background=self.bg,
                                      text=f"Witam: \n{user_name}!")
        self.name_user.place(x=80, y=20)

        imagine_setup_path = {
            'logout': r'C:\Users\trapi\Desktop\Kurs\Menu\logout.png',
            'setting': r'C:\Users\trapi\Desktop\Kurs\Menu\settings.png',
            'toturial': r'C:\Users\trapi\Desktop\Kurs\Menu\toturial.png',
            'learn': r'C:\Users\trapi\Desktop\Kurs\Menu\learn.png',
            'translate': r'C:\Users\trapi\Desktop\Kurs\Menu\translate.png',
        }

        self.images_setup = {}

        for key, path_setup in imagine_setup_path.items():

            self.images_setup[key] = self.load_and_resize_image(path_setup)

        button_setup = [
            ('logout', 'WYLOGUJ', self.logout, 120),
            ('setting', "USTAWIENIA", lambda: self.show_settings(user_name, login, email), 200),
            ('toturial', 'SAMOUCZEK', Samouczek, 260),
            ('learn', 'NAUKA', lambda: self.chapters(user_name, login, email), 320),
            ('translate', 'TŁUMACZ', lambda: self.translate_fun(user_name, login, email), 380)
        ]

        for key, label, command, y in button_setup:

            img = self.images_setup.get(key)

            but = tk.Button(self.menu, image=img, background="white", bd=4, command=command)

            but.place(x=20, y=y)

            tk.Label(self.menu, font="Arial 12 bold", foreground=self.fg2,background=self.bg,
                       text=label).place(x=70, y=y + 15)


        #czywtuje konfigurację kolorów
    def apply_theme(self):

        self.menu.configure(background=self.bg)

        for widget in self.menu.winfo_children():

            if isinstance(widget, tk.Label):

                widget.configure(background=self.bg, foreground=self.get_fg_for_label(widget))

            elif isinstance(widget, tk.Radiobutton):

                widget.configure(background=self.bg)


        #ustawia odpowiedni kolor dla label
    def get_fg_for_label(self, label):

        if label.cget('text') in ('Email:', 'Hasło:', 'Kolor tła:', 'Usuń konto:'):

            return self.fg3

        elif label.cget('text') in ('WYLOGUJ', "USTAWIENIA", "SAMOUCZEK", "NAUKA", "TŁUMACZ"):

            return self.fg2

        else:

            return self.fg1


        #tryb jasny
    def set_light_mode(self):

        self.load_config('config_light.json')

        self.apply_theme()


        #tryb ciemny
    def set_dark_mode(self):

        self.load_config('config_dark.json')

        self.apply_theme()


        #metoda wylogowania z aplikacji
    def logout(self):

        self.menu.destroy()

        self.registration_window.deiconify()


        #metoda ładująca obrazy do przycisków
    def load_images(self):

        image_paths = {
            'meeting': r'C:\Users\trapi\Desktop\Kurs\Menu\meeting.png',
            'travel': r'C:\Users\trapi\Desktop\Kurs\Menu\travel.png',
            'health': r'C:\Users\trapi\Desktop\Kurs\Menu\health.png',
            'fashion': r'C:\Users\trapi\Desktop\Kurs\Menu\fashion.png',
            'job': r'C:\Users\trapi\Desktop\Kurs\Menu\job.png',
            'finance': r'C:\Users\trapi\Desktop\Kurs\Menu\finanse.png',
            'eat': r'C:\Users\trapi\Desktop\Kurs\Menu\eat.png',
            'entertainment': r'C:\Users\trapi\Desktop\Kurs\Menu\entertainment.png',
            'technology': r'C:\Users\trapi\Desktop\Kurs\Menu\technology.png',
            'other': r'C:\Users\trapi\Desktop\Kurs\Menu\other.png',
        }

        self.images = {}

        for key, path in image_paths.items():

            self.images[key] = self.load_and_resize_image(path)


        #metoda wyśrodkowująca obraz w przycisku
    def load_and_resize_image(self, filename, button_width=40, button_height=40):

        image = Image.open(filename)

        if hasattr(Image, 'ANTIALIAS'):

            resized_image = image.resize((button_width, button_height), Image.ANTIALIAS)
        else:

            resized_image = image.resize((button_width, button_height))

        return ImageTk.PhotoImage(resized_image)


        #metoda pokazująca opcje ustawień
    def show_settings(self, user_name, login, email):

        self.current_login = login

        self.initial_email = self.get_email_from_db(login)

        self.clear_widgets()

        self.create_widgets(user_name, login, email)


        buttons_confings = [
            ('change_button', 'ZMIEŃ', self.change_email_fun, 630, 120),
            ('change_pas_button', 'ZMIEŃ', self.change_password_fun, 630, 210),
            ('save_counter_word', 'ZAPISZ', self.save_theme, 630, 300)
        ]

        for key, text, command, x, y in buttons_confings:

            button = tk.Button(self.menu, text = text, command = command, width= 7, font= "Arial 10 bold", bd= 4,
                               background="LightCyan4", foreground="cyan")
            button.place(x=x, y=y)

        label_config = [
            ('Email:', 'goldenrod3', 'navy', 'Arial 14 bold', 120),
            ('Hasło:', 'goldenrod3', 'navy', 'Arial 14 bold', 210),
            ('Kolor tła:', 'goldenrod3', 'navy', 'Arial 14 bold', 300),
            ('Usuń konto:', 'goldenrod3', 'navy', 'Arial 14 bold', 600)
        ]

        for text, background, foreground, font, y in label_config:

            tk.Label(self.menu, background= self.bg, foreground= self.fg3,
                             font= font, text= text).place(x= 300, y= y)
        tk.Label(self.menu, text= f'Login: {login}', background= self.bg, foreground=self.fg1,
                 font= 'Arial 14 bold').place(x=300, y=70)

                #radiobutton do wyboru trybu
        self.radioValue = tk.IntVar()
        self.radioValue.set(1)

        self.radio_one = tk.Radiobutton(self.menu, text= "TRYB JASNY", foreground= "white", variable= self.radioValue,
                            value= 1, background= self.bg, command=self.set_light_mode,
                                        activebackground=self.bg, font="Arial 12 bold",
                                        activeforeground="white")
        self.radio_one.place(x= 430, y= 300)

        self.radio_two = tk.Radiobutton(self.menu, text= "TRYB CIEMNY", foreground= "white", variable= self.radioValue,
                            value= 2,background= self.bg,command=self.set_dark_mode,
                                        activebackground= self.bg, font="Arial 12 bold",
                                        activeforeground="white")
        self.radio_two.place(x= 430, y= 350)



        self.email_var = tk.StringVar()

        self.email_var.set(self.initial_email)

        self.change_email = tk.Entry(self.menu, width=25, font="Arial 11", disabledbackground="LightYellow2",
                    state= tk.NORMAL, textvariable= self.email_var, disabledforeground="black")
        self.change_email.place(x=370, y=122)

        self.change_email.configure(state=tk.DISABLED)


        self.res_password = tk.Entry(self.menu, width=25, font="Arial 11", disabledbackground="LightYellow2",
                                         state=tk.DISABLED, show='•')
        self.res_password.place(x=370, y=212)


        self.delete_user = self.load_and_resize_image(r'C:\Users\trapi\Desktop\Kurs\Menu\remove_user.png')

        self.delete_button = tk.Button(self.menu, image=self.delete_user, background="white", bd=4,
                                       command= self.delete_user_sql)

        self.delete_button.place(x=430, y=590)


        #połączenie z bazą do aktualizacji email
    def get_email_from_db(self, login):

        try:

            self.sql_connection()

            cursor = self.mydb.cursor()

            sql = "SELECT email FROM user_english WHERE login = %s"

            cursor.execute(sql, (login,))

            result = cursor.fetchone()

            if result:

                return result[0]

            else:

                return "Brak e-maila"

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return "Błąd"

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()


        #metoda umożliwiająca zmianę email
    def change_email_fun(self):

        self.initial_email = self.email_var.get()

        self.change_save = tk.Button(self.menu, text="ZAPISZ", width=7, font="Arial 10 bold", bd=4,
                                         background="grey", foreground="yellow",
                                     command= self.save_change_email)
        self.change_save.place(x=600, y=160)

        self.change_email.config(state=tk.NORMAL)

        self.cancel_change = tk.Button(self.menu, text="ANULUJ", width=7, font="Arial 10 bold", bd=4,
                                         background="grey", foreground="orange",
                                       command= self.cancel)
        self.cancel_change.place(x=680, y=160)


            #metoda dodaje reset hasła
    def change_password_fun(self):

        self.changes_save_pas = tk.Button(self.menu, text="ZAPISZ", width=7, font="Arial 10 bold", bd=4,
                                         background="grey", foreground="yellow", command= self.save_change_password)
        self.changes_save_pas.place(x=600, y=250)

        self.res_password.config(state=tk.NORMAL, show='•')

        self.cancel_change = tk.Button(self.menu, text="ANULUJ", width=7, font="Arial 10 bold", bd=4,
                                         background="grey", foreground="orange",
                                       command= self.cancel)
        self.cancel_change.place(x=680, y=250)


        # metoda cofa zmianę hasła lub maila
    def cancel(self):

        self.email_var.set(self.initial_email)

        self.change_email.config(textvariable=self.email_var, state=tk.DISABLED)

        self.res_password.delete(0, tk.END)

        self.res_password.config(state=tk.DISABLED)

        if self.change_save is not None:

            self.change_save.destroy()

            self.change_save = None

        if self.changes_save_pas is not None:

            self.changes_save_pas.destroy()

            self.changes_save_pas = None

        if self.cancel_change is not None:

            self.cancel_change.destroy()

            self.cancel_change = None


        #połączenie z baza
    def sql_connection(self):

        self.mydb = mysql.connector.connect(

            host="localhost",
            user="root",
            password=self.password_sql,
            database="user_english",
            auth_plugin="mysql_native_password"
        )

        if self.mydb.is_connected():

            print("Połączenie poprawne z bazą danych MySQL")

        else:
            print("Błąd połączenia")


        #zapis nowego email
    def save_change_email(self):

        self.new_email = self.change_email.get()

        try:

            self.sql_connection()

            cursor = self.mydb.cursor()

            sql = "UPDATE user_english SET email = %s WHERE login = %s"

            values = (self.new_email, self.current_login)

            cursor.execute(sql, values)

            self.mydb.commit()

            messagebox.showinfo("Informacja", "Email zaktualizowany")

            if cursor.rowcount == 0:

                messagebox.showerror("Błąd", "Nie udało się zaktualizować adresu e-mail.")

                return False

            else:

                self.initial_email = self.new_email

                self.email_var.set(self.new_email)

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return False

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()

        self.change_email.config(state=tk.DISABLED)

        if self.change_save is not None:

            self.change_save.destroy()

            self.change_save = None

        if self.cancel_change is not None:

            self.cancel_change.destroy()

            self.cancel_change = None


            # metoda hashująca hasło
    def hash_password(self, password):

        salt = bcrypt.gensalt()

        hashed_password = bcrypt.hashpw(password.encode('utf-8'), salt)

        return hashed_password


            #metoda zapisu nowego hasła
    def save_change_password(self):

        self.new_res = self.res_password.get()

        if len(self.new_res) < 8 or not re.search(r"[A-Z]", self.new_res) or not re.search(r"\W", self.new_res):

            messagebox.showerror("Błąd", "Hasło nie spełnia wymogów")

            return False

        else:

            hashed_password = self.hash_password(self.new_res)

            try:

                self.sql_connection()

                cursor = self.mydb.cursor()

                sql = "UPDATE user_english SET haslo = %s WHERE login = %s"

                values = (hashed_password, self.current_login)

                cursor.execute(sql, values)

                self.mydb.commit()

                messagebox.showinfo("Informacja", "Hasło zaktualizaowane")

                if cursor.rowcount == 0:

                    messagebox.showerror("Błąd", "Nie udało się zaktualizować hasła.")

                    return False


            except mysql.connector.Error as err:

                messagebox.showerror("Błąd", f"Error: {err}")

                return False

            finally:

                if self.mydb.is_connected():

                    cursor.close()

                    self.mydb.close()

            self.res_password.delete(0, tk.END)

            self.res_password.config(state=tk.DISABLED)

            if self.changes_save_pas is not None:

                self.changes_save_pas.destroy()

                self.changes_save_pas = None

            if self.cancel_change is not None:

                self.cancel_change.destroy()

                self.cancel_change = None


        #zapis trybu do bazy
    def save_theme(self):

        self.theme = self.radioValue.get()


        try:

            self.sql_connection()

            cursor = self.mydb.cursor()

            sql = "UPDATE user_english SET tryb = %s WHERE login = %s"

            values = (self.theme, self.current_login)

            cursor.execute(sql, values)

            self.mydb.commit()

            messagebox.showinfo("Informacja", "Tryb zapisany")

            if cursor.rowcount == 0:

                messagebox.showerror("Błąd", "Nie udało się zaktualizować trybu.")

                return False

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return False

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()


        #wczytuje zapisny tryb z bazy
    def load_theme_db(self, login):

        try:

            self.sql_connection()

            cursor = self.mydb.cursor()

            sql = "SELECT tryb FROM user_english WHERE login = %s"

            cursor.execute(sql, (login,))

            self.load_result = cursor.fetchone()

            if self.load_result:

                return self.load_result[0]

            else:

                return None

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return "Błąd"

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()


    def load_theme(self):

        self.load_result = self.load_theme_db(self.current_login)

        if self.load_result == 2:

            self.set_dark_mode()

        else:

            self.set_light_mode()

        #metoda dddająca widżety rozdziałów
    def chapters(self, user_name, login, email):

        self.clear_widgets()

        self.create_widgets(user_name, login, email)


        self.load_images()

        button_config = [
            ('meeting', 'SPOTKANIE', lambda: self.open_spotkanie(), 60),  #zamiast Spotkanie
            ('travel', 'PODRÓŻ', lambda: self.open_podroze(), 125),
            ('health', 'ZDROWIE', lambda: self.open_zdrowie(), 190),
            ('fashion', 'MODA I URODA', lambda: self.open_moda(), 255),
            ('job', 'PRACA', lambda: self.open_praca(), 320),
            ('finance', 'FINANSE I ZAKUPY', lambda: self.open_finanse(), 385),
            ('eat', 'JEDZENIE', lambda: self.open_jedzenie(), 450),
            ('entertainment', 'ROZRYWKA', lambda: self.open_rozrywka(), 515),
            ('technology', 'TECHNOLOGIA', lambda: self.open_technologia(), 580),
            ('other', 'INNE', lambda: self.open_inne(), 645)
        ]

        for key, label, command, y in button_config:

            image = self.images.get(key)

            button = tk.Button(self.menu, image=image, background="white", bd=4, command=command)

            button.place(x=330, y=y)

            tk.Label(self.menu, font="Arial 12 bold", foreground=self.fg3,background=self.bg,
                text=label).place(x=390,y=y + 10)

    def open_spotkanie(self):

        spotkanie_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Spotkanie(self.menu, spotkanie_colors)

    def open_podroze(self):

        podroze_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Podroze(self.menu, podroze_colors)

    def open_zdrowie(self):

        zdrowie_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Zdrowie(self.menu, zdrowie_colors)

    def open_moda(self):
        moda_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Moda(self.menu, moda_colors)

    def open_praca(self):

        praca_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Praca(self.menu, praca_colors)

    def open_finanse(self):
        finanse_colors = {

            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Finanse(self.menu, finanse_colors)

    def open_jedzenie(self):

        jedzenie_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Jedzenie(self.menu, jedzenie_colors)

    def open_rozrywka(self):

        rozrywka_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Rozrywka(self.menu, rozrywka_colors)

    def open_technologia(self):

        technologia_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Technologia(self.menu, technologia_colors)

    def open_inne(self):

        inne_colors = {
            'bg': self.bg,
            'fg4': self.fg4,
            'fg5': self.fg5,
            'fg6': self.fg6,
            'fg7': self.fg7,
            'fg8': self.fg8
        }
        Inne(self.menu, inne_colors)

        #tlumacz
    def translate_fun(self, user_name, login, email):

        self.clear_widgets()

        self.create_widgets(user_name, login, email)

        tk.Label(self.menu, font= "Arial 12 bold", foreground= self.fg3, background=self.bg,
                 text= "SŁOWO/ ZWROT/ TEKST:").place(x= 330, y= 75)

        self.text = tk.Text(self.menu, font= "Arial 11", height=10, width=40)

        self.text.place(x= 300, y = 100)

        scrollbar_one = tk.Scrollbar(self.menu, command= self.text.yview)

        scrollbar_one.place_configure(x= 625, y= 100, width= 20, height= 174)

        self.text.config(yscrollcommand= scrollbar_one.set)

        tk.Label(self.menu, font= "Arial 12 bold", foreground=self.fg3, background=self.bg,
                 text= "TŁUMACZENIE:").place(x= 330, y= 325)

        self.text_two = tk.Text(self.menu, font= "Arial 11", height= 10, width= 40, state= tk.DISABLED)

        self.text_two.place(x = 300, y= 350)

        scrollbar_two = tk.Scrollbar(self.menu, command= self.text_two.yview)

        scrollbar_two.place_configure(x =625, y= 350, width= 20, height= 174)

        self.text_two.config(yscrollcommand= scrollbar_two.set)


        image_pol = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\polska.png')

        self.img_pol = ImageTk.PhotoImage(image_pol)

        image_eng = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\wbk.png')

        self.img_eng = ImageTk.PhotoImage(image_eng)

        self.poland = tk.Button(self.menu, image= self.img_pol, width=50, height=35, bd= 4)

        self.poland.place(x= 670, y = 120)

        self.poland.bind("<Button-1>", lambda event: self.trans_text_config(event, "PL"))

        self.english = tk.Button(self.menu, image= self.img_eng, width=50, height=35, bd= 4)

        self.english.place(x= 670, y= 180)

        self.english.bind("<Button-1>", lambda event: self.trans_text_config(event, "EN"))

        self.picture_speaker_word()


        #metoda czyszcząca nie potrzebne widoki
    def clear_widgets(self):

        for widget in self.menu.winfo_children():

            widget.destroy()


        #metoda to tłumaczenia
    def trans_text_config(self,event, target_lang):

        self.target_lang = target_lang

        self.trans_text()


            #metoda tłumaczy
    def trans_text(self):

        self.value_text = self.text.get("1.0", tk.END).strip()

        if not self.value_text:

            messagebox.showerror("Błąd", "Proszę wpisać tekst do tłumaczenia.")

            return

        params = {
            'auth_key': self.password_trans,
            'text': self.value_text,
            'target_lang': self.target_lang
        }

        response = requests.post(self.url, data=params)

        if response.status_code == 200:

            result = response.json()

            translated_text = result['translations'][0]['text']

        else:

            translated_text = f"Error: {response.status_code} - {response.text}"

        self.text_two.config(state=tk.NORMAL)

        self.text_two.delete("1.0", tk.END)

        self.text_two.insert(tk.END, translated_text)

        self.text_two.config(state=tk.DISABLED)


        #wymowa
    def picture_speaker_word(self):

        image = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\speaker.png')

        button_width = 45

        button_height = 45

        if hasattr(image, 'ANTIALIAS'):

            speaker_1 = image.resize((button_width, button_height), Image.ANTIALIAS)

        else:

            speaker_1 = image.resize((button_width, button_height))

        self.sound_speaker_trans = ImageTk.PhotoImage(speaker_1)

        tk.Button(self.menu, image=self.sound_speaker_trans, background="white", bd=4,
                  command=lambda: [self.speak_word(), self.wait_for_sound_end()]).place(x=670, y= 400)


        #metody do odtworzenia dzwieku
    def speak_word(self):

        word = self.text_two.get("1.0", tk.END)

        print(word)

        tts = gTTS(text=word, lang='en')

        tts.save("temp.mp3")

        # Inicjalizacja modułu dźwiękowego pygame
        pygame.mixer.init()

        # Odtwarzanie pliku audio
        pygame.mixer.music.load("temp.mp3")

        pygame.mixer.music.play()


    def wait_for_sound_end(self):

        while pygame.mixer.music.get_busy():

            pygame.time.wait(100)

        pygame.quit()


    def delete_user_sql(self):

        question = messagebox.askyesno("Potwierdzenie usunięcia", "Czy na pewno chcesz usunąć konto?")

        if not question:

            return

        try:

            self.sql_connection()

            cursor = self.mydb.cursor()

            sql = "DELETE FROM user_english WHERE login = %s"

            cursor.execute(sql, (self.current_login,))

            self.mydb.commit()

        except mysql.connector.Error as err:

            messagebox.showerror("Błąd", f"Error: {err}")

            return False

        finally:

            if self.mydb.is_connected():

                cursor.close()

                self.mydb.close()

        self.logout()



























