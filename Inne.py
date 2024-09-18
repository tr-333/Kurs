import tkinter as tk
from tkinter import ttk, messagebox
from PIL import ImageTk, Image
import mysql.connector
import os
from gtts import gTTS
import pygame
import json

class Inne:

    def __init__(self, parent, colors):

        self.bg = colors.get('bg')
        self.fg4 = colors.get('fg4')
        self.fg5 = colors.get('fg5')
        self.fg6 = colors.get('fg6')
        self.fg7 = colors.get('fg7')
        self.fg8 = colors.get('fg8')

        pygame.init()

        self.password = os.environ.get('MYSQL')

        self.oth = tk.Toplevel()

        self.oth.title("INNE")

        self.oth.geometry("900x900")

        self.oth.resizable(False, False)

        self.apply_theme()

        self.constans_button()

        self.sql_index = 0

        self.lessons_selected = [False] * 6

        self.texts = self.load_theme_lesson()

        self.current_text = ""

        self.lesson_title_label = tk.Label(self.oth, text="", font="Ravie 16", foreground=self.fg5,
                         background=self.bg)

        self.lesson_title_label.place(x=300, y=30)


    def apply_theme(self):

        self.oth.configure(background=self.bg)

    # Aktualizacja interfejsu użytkownika
    def update_interface(self):

        img = Image.open(obraz)

        image = ImageTk.PhotoImage(img)

        label = tk.Label(self.oth, image=image, height= 150, width= 150)

        label.image = image

        label.place(x=470, y=360)


        #przyciski stałe funkcyjne
    def constans_button(self):

            #linia oddzielająca główne przyciski
        vertical_line = tk.Frame(self.oth, width=5, bg="purple4")

        vertical_line.place(relx=0.25, rely=0, relheight=2, anchor=tk.CENTER)

        title = tk.Label(self.oth, text="INNE", foreground=self.fg4, background=self.bg,
                                                                font= "Ravie 16")
        title.pack(anchor=tk.NW, padx= 30, pady= 10)

            #scrollbar dla przycisków stałych
        frame = tk.LabelFrame(self.oth, background=self.bg)

        mycanvas = tk.Canvas(frame, background=self.bg)

        mycanvas.pack(anchor=tk.CENTER, padx=40, pady=5)

        yscrollbar = ttk.Scrollbar(frame, orient="vertical", command=mycanvas.yview)

        yscrollbar.place(relx=1.0, rely=0, anchor=tk.NE)

        yscrollbar.place_configure(height=800, width=15)

        mycanvas.configure(yscrollcommand=yscrollbar.set, height=800, width=80)

        mycanvas.bind('<Configure>', lambda e: mycanvas.configure(scrollregion=mycanvas.bbox('all')))

        myFrame = tk.Frame(mycanvas, background=self.bg)

        mycanvas.create_window((0,0), window=myFrame, anchor=tk.NW)

        frame.pack(anchor=tk.NW, fill="y", expand=True, padx=30)


        self.buttons = [vertical_line, title, frame, myFrame, mycanvas, yscrollbar]

        self.lesson_methods = {}

        for i in range(1,6):

            sub_name = f"Lekcja {i}"

            self.lesson_methods[sub_name]=lambda num=i:self.lesson(num)

            but = tk.Button(myFrame, text=sub_name, width=7, font="Arial 12 bold", bd=4,
                               background="slate grey", foreground="yellow",
                               command=lambda sub=sub_name: self.click_button(sub))
            but.pack(anchor=tk.CENTER,pady=5)



        # wybór odpowiedniej flagi dla wybranego przycisku
    def click_button(self,subject):

                # Zresetuj wszystkie flagi lessons_selected na False
        for i in range(6):

            self.lessons_selected[i] = False

        self.sql_index = 0

                # Ustawienie odpowiedniej flagi po pobraniu lekcji
        lesson_number = int(subject.split()[1])

        self.lessons_selected[lesson_number - 1] = True

        self.lesson_methods[subject]()


        #odpowiednia lekcja ktora ma się wyświetlić
    def show_lesson(self, lesson_number, text):

        self.clear_lesson_widget()

                # Ustawia  odpowiednią flagę lessons_selected na True dla wybranej lekcji
        self.lessons_selected[lesson_number - 1] = True

        self.image_button_lesson()

        self.label_word_lesson()

        self.current_text = text

        self.lesson_title_label.config(text=text)

        self.oth.update()


        #wyświetla opowiedni tekst do lekcji
    def lesson(self, lesson_number):


        text_key = f"text_{lesson_number}"

        text = self.texts.get(text_key, "")

        if text:

            self.show_lesson(lesson_number, text)

        else:

            print(f"Brak tekstu dla klucza: {text_key}")



        #metoda usuwa wcześniejsze widoki
    def clear_lesson_widget(self):

        for widget in self.oth.winfo_children():

            if widget not in self.buttons and widget != self.lesson_title_label:

                widget.destroy()


        # słowka do lekcji
    def label_word_lesson(self):

        self.word_polish = tk.Label(self.oth, background=self.bg, foreground=self.fg6,
                                        text="", font="Arial 18 bold")
        self.word_polish.place(x=420, y=190)

        self.word_english = tk.Label(self.oth, background=self.bg, text="",
                                         font="Arial 18 bold", foreground=self.fg7)
        self.word_english.place(x=420, y=260)


        #zdjecia jako przyciski do lekcji
    def image_button_lesson(self):

        self.user_no = self.load_and_resize_image(r'C:\Users\trapi\Desktop\Kurs\Menu\no.png')

        self.user_ok = self.load_and_resize_image(r'C:\Users\trapi\Desktop\Kurs\Menu\ok.png')

        self.start_photo = self.load_and_resize_image(r'C:\Users\trapi\Desktop\Kurs\Menu\start.png')


        self.start_button = tk.Button(self.oth, image=self.start_photo, background="white", bd=4,
                                      command= self.add_word)

        self.start_button.place(x=300, y=750)

        self.ok_button = tk.Button(self.oth, image=self.user_ok, background="white", bd=4, command=self.example_word)

        self.ok_button.place(x=500, y=750)

        self.no_button = tk.Button(self.oth, image=self.user_no, background="white", bd=4, command=self.back_word)

        self.no_button.place(x=700, y=750)


        #metoda dla skalowania obrazów w button
    def load_and_resize_image(self, filename, button_width=80, button_height=80):

        image = Image.open(filename)

        if hasattr(Image, 'ANTIALIAS'):

            resized_image = image.resize((button_width, button_height), Image.ANTIALIAS)

        else:

            resized_image = image.resize((button_width, button_height))

        return ImageTk.PhotoImage(resized_image)


        #polaczenie z baza danych
    def connection_database(self):

        self.mydb = mysql.connector.connect(

        host= "localhost",
        user= "root",
        password= self.password,
        database= "chapter_ten",
        auth_plugin="mysql_native_password"
        )

        if self.mydb.is_connected():

            print("Połączenie poprawne z bazą danych MySQL")

        else:
            print("Błąd połączenia")


            # metoda dodająca słownictwo do lekcji
    def handle_word(self, direction):

        global angielski, polski, obraz


        if direction == "forward":

            self.sql_index += 1

        elif direction == "backward" and self.sql_index > 0:

            self.sql_index -= 1

        # Sprawdź, czy próbujesz cofnąć się przed pierwsze słowo
        if self.sql_index <= 0:

            messagebox.showinfo("Komunikat", "Jesteś już na pierwszym słowie!")

            return


        self.connection_database()

        mycursor = self.mydb.cursor()

        for index, lesson_selected in enumerate(self.lessons_selected):

            if lesson_selected:

                mycursor.execute("SELECT polski, angielski, obraz"
                                 " FROM chapter_ten WHERE poziom = %s LIMIT 1 OFFSET %s",
                                 (index + 1, self.sql_index - 1,))
                break


        row = mycursor.fetchone()

        if row:

            polski, angielski, obraz = row

            print(f"Polski: {polski}, Angielski: {angielski}, Obraz: {obraz}")

            self.word_polish.config(text=polski)

            self.word_english.config(text=angielski)

            self.oth.after(100, self.update_interface)

        else:

            print("Brak pasujących słów")

            messagebox.showinfo("Komunikat", "Jesteś już na ostatnim słowie!")

        self.picture_speaker_word()

        self.mydb.close()


        #słówka w przód
    def add_word(self):

        self.clear_lesson_widget()

        self.label_word_lesson()

        self.label_example()

        self.image_button_lesson()

        self.handle_word("forward")

        self.oth.update()


         #metoda do cofnięcia słowa w lekcji
    def back_word(self):

        self.clear_lesson_widget()

        self.label_word_lesson()

        self.label_example()

        self.image_button_lesson()

        self.handle_word("backward")

        self.oth.update()


        #utworzenie pól do wyświetlenia przykładów
    def label_example(self):

        self.pa = tk.Label(self.oth, text="", background=self.bg, font="Arial 16 bold",
                           foreground= self.fg6)

        self.pa.place(x=290, y=195)

        self.pb = tk.Label(self.oth, text="", background=self.bg, font="Arial 16 bold",
                           foreground=self.fg7)

        self.pb.place(x=305, y=230)

        self.pc = tk.Label(self.oth, text="", background=self.bg, font="Arial 16 bold",
                           foreground=self.fg6)

        self.pc.place(x=290, y=280)

        self.pd = tk.Label(self.oth, text="", background=self.bg, font="Arial 16 bold",
                           foreground=self.fg7)

        self.pd.place(x=305, y=315)



        # metoda do wyświetlania przykładów
    def example_word(self):

        self.clear_lesson_widget()

        self.label_word_lesson()

        self.label_example()

        self.image_button_lesson()

        self.data_example()

        example = f"{polski} / {angielski}"

        self.przyklad = tk.Label(self.oth, text=example, font="Arial 16 bold", foreground=self.fg8,
                                     background=self.bg)
        self.przyklad.place(x=275, y=140)

        self.lesson_title_label.config(text=self.current_text)

        self.speak_word_example()

        self.oth.update()



        #metoda do pozyskania z bazy przykładów
    def data_example(self):

        self.connection_database()

        mycursor = self.mydb.cursor()

        for index, lesson_selected in enumerate(self.lessons_selected):

            if lesson_selected:

                mycursor.execute("SELECT przyklada, przykladb, przykladc, przykladd "
                                 "FROM chapter_ten WHERE poziom = %s LIMIT 1 OFFSET %s",
                                (index + 1, self.sql_index - 1,))
                break

        row = mycursor.fetchone()

        if row:

            przyklada, przykladb, przykladc, przykladd = row

            print(f"PA: {przyklada}, PB: {przykladb}, PC: {przykladc}, PD: {przykladd}")

            self.pa.config(text=przyklada)

            self.pb.config(text=przykladb)

            self.pc.config(text=przykladc)

            self.pd.config(text=przykladd)

            self.oth.after(100, self.update_interface)

        else:

            print(" brak przykładów")

        self.picture_speaker_word()

        self.mydb.close()



        #odczyt pliku json z textem dla lekcji
    def load_theme_lesson(self):


        file = r'C:\Users\trapi\Desktop\Kurs\Json\chapter_ten_lesson.json'

        with open(file, encoding='utf-8') as config_file:

            config = json.load(config_file)

            return config["text"]



        #metoda dodająca do lekcji lektora i przycisk
    def picture_speaker_word(self):

        image = Image.open(r'C:\Users\trapi\Desktop\Kurs\Menu\speaker.png')

        button_width = 45

        button_height = 45

        if hasattr(image, 'ANTIALIAS'):

            speaker_1 = image.resize((button_width, button_height), Image.ANTIALIAS)

        else:

            speaker_1 = image.resize((button_width, button_height))

        self.sound_speaker = ImageTk.PhotoImage(speaker_1)

        tk.Button(self.oth, image=self.sound_speaker, background="white", bd=4,
                  command=lambda: [self.speak_word(), self.wait_for_sound_end()]).place(x=515, y= 550)


        #dodatkowy przycisk wyświetlany tylko w przykładzie
    def speak_word_example(self):

        tk.Button(self.oth, image=self.sound_speaker, background="plum2", bd= 4,
                  command=lambda: [self.word_example_two(), self.wait_for_sound_end()]).place(x=580, y=550)


        #odwarza tłumaczenie word3
    def word_example_two(self):

        word3 = self.pd.cget("text")

        print(word3)

        tts = gTTS(text=word3, lang='en')

        tts.save("temp.mp3")

        # Inicjalizacja modułu dźwiękowego pygame
        pygame.mixer.init()

        # Odtwarzanie pliku audio
        pygame.mixer.music.load("temp.mp3")

        pygame.mixer.music.play()


        #metody do odtworzenia dzwieku
    def speak_word(self):

        word = self.word_english.cget("text")

        word2 = self.pb.cget("text")


        if word:

            print(word)

            tts = gTTS(text=word, lang='en')

            tts.save("temp.mp3")

        elif word2:

            print(word2)

            tts = gTTS(text=word2, lang='en')

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



if __name__ == "__main__":

    other = Inne()

    other.oth.mainloop()