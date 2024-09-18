import tkinter as tk
from tkinter import Scrollbar, Frame, Canvas
from PIL import Image, ImageTk
import json

class Samouczek:

    def __init__(self):

        self.samouczek = tk.Toplevel()

        self.samouczek.title("SAMOUCZEK")

        self.samouczek.geometry("730x800")

        self.samouczek.resizable(False, False)


            #tworzymy ramke do przewijania
        self.canvas = Canvas(self.samouczek)

        self.canvas.pack(side= tk.LEFT, fill= tk.BOTH, expand= True)

        scrollbar = Scrollbar(self.samouczek, command= self.canvas.yview)

        scrollbar.pack(side= tk.RIGHT, fill= tk.Y)

        self.canvas.configure(yscrollcommand= scrollbar.set, background="pale goldenrod")

        self.inner_frame = Frame(self.canvas, background="pale goldenrod")

        self.canvas.create_window((0,0), window= self.inner_frame, anchor="nw")

        self.canvas.bind("<Configure>", self.on_configure)

        self.json_file()

        self.samouczek.mainloop()


        #funkcja do scrollowania tekstu
    def on_configure(self, event):

        self.canvas.configure(scrollregion= self.canvas.bbox("all"))


        #odczyt pliku
    def json_file(self):

        file_json = r'C:\Users\trapi\Desktop\Kurs\samouczek.json'

        with open(file_json, 'r', encoding= 'utf-8') as file:

            data = json.load(file)

            ordered_keys = sorted(data.keys(), key=lambda x: int(x.split('_')[1]))

            for key in ordered_keys:

                if key.startswith("naglowek"):

                    naglowek_text = data[key]

                    naglowek_label = tk.Label(self.inner_frame, text= f'{naglowek_text} \n')

                    naglowek_label.configure(background="pale goldenrod", font="Arial 18 bold", foreground="red")

                    naglowek_label.pack()

                    obraz_key = "obraz_" + key.split("_")[1]

                    if obraz_key in data:

                        obraz_path = data[obraz_key]

                        if obraz_path:

                            image = Image.open(obraz_path)

                            image.thumbnail((450, 450))

                            photo = ImageTk.PhotoImage(image)

                            obraz_label = tk.Label(self.inner_frame, image= photo)

                            obraz_label.photo = photo

                            obraz_label.pack()

                elif key.startswith("tresc"):

                    tresc_text = "\n\n".join(data[key])

                    tresc_label = tk.Label(self.inner_frame, text= f'\n {tresc_text} \n')

                    tresc_label.configure(background="pale goldenrod", font="Arial 12")

                    tresc_label.pack()


            #aktualizacja okna
            self.samouczek.update()
