USE chapter_nine;

CREATE TABLE chapter_nine
(
	polski VARCHAR(300),
    angielski VARCHAR(300),
    poziom INT,
    obraz VARCHAR(400),
	przyklada VARCHAR(400),
    przykladb VARCHAR(400),
    przykladc VARCHAR(400),
    przykladd VARCHAR(400)
);

INSERT INTO chapter_nine(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('poczta głosowa', 'voicemail', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\poczta.png', 'Sprawdzałem pocztę głosową.', 'I checked my voicemail.', 'Czy zostawiłeś wiadomość na poczcie głosowej?', 'Did you leave a message on the voicemail?'),
	('abonament', 'subscription', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\abo.png', 'Mam miesięczny abonament na ten serwis.', 'I have a monthly subscription to this service.', 'Czy odnawiasz abonament automatycznie?', 'Do you renew your subscription automatically?'),
	('rozłączyć się', 'hang up', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\hang.png', 'Musiałem się rozłączyć.', 'I had to hang up.', 'Dlaczego się rozłączyłeś?', 'Why did you hang up?'),
	('nic nie słyszę', 'I can''t hear a thing', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\ucho.png',  'Nic nie słyszę przez hałas.', 'I can''t hear a thing over the noise.', 'Czy możesz mówić głośniej? Nic nie słyszę.', 'Can you speak louder? I can''t hear a thing.'),
	('Przerywa mi Cię', 'You''re breaking up', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\przerywa.png', 'Przerywa mi Cię, powtórz proszę.', 'You’re breaking up, please repeat.', 'Linia jest słaba, przerywa mi Cię.', 'The line is weak, you’re breaking up.'),
	('odebrać telefon', 'answer the phone', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\odebrac.png',  'Nie mogłem odebrać telefonu.', 'I couldn’t answer the phone.', 'Kto odebrał telefon?', 'Who answered the phone?'),
	('ustawić w nich tryb wibracji', 'set them to vibrate', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wibra.png', 'Ustawiłem telefon w tryb wibracji.', 'I set my phone to vibrate.', 'Czy możesz ustawić swój telefon w tryb wibracji?', 'Can you set your phone to vibrate?'),
	('rozmawiać przez telefon z', 'talk on the phone to', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\rozmowa.png', 'Rozmawiałem przez telefon z kolegą.', 'I talked on the phone to a friend.', 'Z kim rozmawiałeś przez telefon?', 'Who did you talk on the phone to?'),
	('złapać zasięg', 'get a signal', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\sygnal.png', 'Nie mogę złapać zasięgu tutaj.', 'I can’t get a signal here.', 'Czy masz jakieś miejsce, gdzie możesz złapać zasięg?', 'Do you have a place where you can get a signal?'),
	('pozostać na linii', 'stay on the line', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\linia.png', 'Proszę pozostać na linii.', 'Please stay on the line.', 'Czy możesz pozostać na linii przez chwilę?', 'Can you stay on the line for a moment?'),
	('Chciałnym rozmawiać z', 'I wish to speak to', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\rozmowa2.png', 'Chciałbym rozmawiać z kierownikiem.', 'I wish to speak to the manager.', 'Chciałbym rozmawiać z tobą.', 'I wish to speak to you.'),
	('Daj go na głośnomówiący', 'Put him on speaker', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\glos.png', 'Daj go na głośnomówiący, proszę.', 'Put him on speaker, please.', 'Czy mogę dać go na głośnomówiący?', 'Can I put him on speaker?'),
	('zostawic wiadomość', 'leave a massage', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\sms.png', 'Zostawiłem wiadomość na poczcie głosowej.', 'I left a message on the voicemail.', 'Czy chcesz zostawić wiadomość?', 'Do you want to leave a message?'),
	('numer kierunkowy do kraju', 'country code', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\kod.png', 'Numer kierunkowy do kraju jest +1.', 'The country code is +1.', 'Jaki jest numer kierunkowy do kraju?', 'What is the country code?'),
	('numer kierunkowy do miasta', 'area code', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\kod.png', 'Numer kierunkowy do miasta to 212.', 'The area code is 212.', 'Czy wiesz, jaki jest numer kierunkowy do miasta?', 'Do you know what the area code is?'),
	('numer domowy', 'home number', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\numer.png', 'Czy możesz podać swój numer domowy?', 'Can you give me your home number?', 'Zadzwonię na twój numer domowy.', 'I’ll call your home number.'),
	('żywotność baterii', 'battery life', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\bateria.png', 'Moja żywotność baterii jest bardzo dobra.', 'My battery life is very good.', 'Jak długa jest żywotność baterii w twoim telefonie?', 'How long is the battery life on your phone?'),
	('przedni aparat', 'front camera', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\front.png', 'Przedni aparat jest świetny do selfie.', 'The front camera is great for selfies.', 'Czy twój telefon ma przedni aparat?', 'Does your phone have a front camera?'),
	('infolinia awaryjna', 'hotline', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\hot.png', 'Zadzwoń na infolinię awaryjną.', 'Call the hotline.', 'Czy masz numer infolinii awaryjnej?', 'Do you have the hotline number?'),
	('wolny sygnał', 'dial tone', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wolna.png', 'Usłyszałem wolny sygnał.', 'I heard a dial tone.', 'Czy słyszysz wolny sygnał?', 'Do you hear a dial tone?'),
	('kod do odblokowania telefonu', 'passcode', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\kod.png', 'Zapomniałem kodu do odblokowania telefonu.', 'I forgot my phone passcode.', 'Jaki jest twój kod do odblokowania telefonu?', 'What is your phone passcode?'),
	('pomyłka', 'wrong number', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wrong.png', 'Przepraszam, to pomyłka.', 'Sorry, it’s a wrong number.', 'Czy to pomyłka?', 'Is this a wrong number?'),
	('Linia jest zajęta', 'The line is busy', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\linia2.png', 'Linia jest zajęta, spróbuj później.', 'The line is busy, try again later.', 'Czy linia jest zajęta?', 'Is the line busy?'),
	('wyczerpała mi się bateria w telefonie', 'My phone is dead', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\low.png', 'Wyczerpała mi się bateria w telefonie.', 'My phone is dead.', 'Czy możesz mnie oddzwonić? Mój telefon jest wyczerpany.', 'Can you call me back? My phone is dead.');
    
SELECT *FROM chapter_nine;

INSERT INTO chapter_nine(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('hasło', 'password', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\haslo.png', 'Wprowadź swoje hasło.', 'Enter your password.', 'Hasło musi mieć co najmniej 8 znaków.', 'The password must be at least 8 characters long.'),
	('wymazać', 'erase', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\guma.png', 'Muszę wymazać te dane.', 'I need to erase this data.', 'Czy chcesz wymazać cały dysk?', 'Do you want to erase the entire disk?'),
	('historia wyszukiwania', 'search history', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\odebrac.png', 'Przejrzyj swoją historię wyszukiwania.', 'Check your search history.', 'Usuń historię wyszukiwania.', 'Delete the search history.'),
	('wzmacniacz sygnału', 'signal amplifier', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wifi.png', 'Potrzebuję wzmacniacza sygnału.', 'I need a signal amplifier.', 'Wzmacniacz sygnału poprawił jakość połączenia.', 'The signal amplifier improved the connection quality.'),
	('dysk twardy', 'hard drive', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\dysk.png', 'Mam nowy dysk twardy.', 'I have a new hard drive.', 'Dysk twardy jest uszkodzony.', 'The hard drive is damaged.'),
	('historia przeglądarki', 'browser history', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\browser.png', 'Usuń swoją historię przeglądarki.', 'Delete your browser history.', 'Przejrzyj swoją historię przeglądarki.', 'Review your browser history.'),
	('skrzynka odbiorcza', 'inbox', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\inbox.png', 'Mam pełną skrzynkę odbiorczą.', 'My inbox is full.', 'Sprawdź swoją skrzynkę odbiorczą.', 'Check your inbox.'),
	('wysłane', 'outbox', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wyslane.png', 'Wysłałem wiadomość ze skrzynki nadawczej.', 'I sent the message from the outbox.', 'Twoja skrzynka nadawcza jest pusta.', 'Your outbox is empty.'),
	('wysłać tego maila', 'get this email out', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\mail.png', 'Muszę wysłać tego maila.', 'I need to get this email out.', 'Czy mogę już wysłać tego maila?', 'Can I get this email out now?'),
	('naciśnąć klawisz', 'press a key', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\key.png', 'Naciśnij dowolny klawisz, aby kontynuować.', 'Press any key to continue.', 'Musisz nacisnąć klawisz Enter.', 'You need to press the Enter key.'),
	('kliknąć dwukrotnie', 'double click', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\klik.png', 'Kliknij dwukrotnie ikonę.', 'Double click the icon.', 'Musisz kliknąć dwukrotnie ten plik.', 'You need to double click this file.'),
	('wynalazek', 'invention', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\wyna.png', 'To jest nowy wynalazek.', 'This is a new invention.', 'Ten wynalazek zmieni świat.', 'This invention will change the world.'),
	('dostępny', 'accesible', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\pin.png', 'Ta strona jest dostępna dla wszystkich.', 'This website is accessible to everyone.', 'Plik nie jest dostępny.', 'The file is not accessible.'),
	('źródło', 'resource', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\dostepny.png', 'To jest przydatne źródło informacji.', 'This is a useful resource of information.', 'Biblioteka jest doskonałym źródłem.', 'The library is an excellent resource.'),
	('kropka w adresie strony', 'dot', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\dot.png', 'Napisz kropkę w adresie strony.', 'Write a dot in the website address.', 'Kropka kończy zdanie.', 'A dot ends the sentence.'),
	('ukośnik', 'slash', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\slash.png', 'Użyj ukośnika w adresie.', 'Use a slash in the address.', 'Zapisz datę z ukośnikiem.', 'Write the date with a slash.'),
	('zeskrolować w dół', 'scroll down to', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\scroll.png', 'Zeskroluj w dół do końca strony.', 'Scroll down to the bottom of the page.', 'Musisz zeskrolować w dół, aby zobaczyć więcej.', 'You need to scroll down to see more.'),
	('pobrać', 'download', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\dow.png', 'Pobierz ten plik.', 'Download this file.', 'Czy mogę pobrać tę aplikację?', 'Can I download this app?'),
	('uruchomić ponownie', 'reboot', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\rebot.png', 'Musisz uruchomić ponownie komputer.', 'You need to reboot the computer.', 'Proszę uruchomić ponownie system.', 'Please reboot the system.'),
	('kopia zapasowa', 'back up', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\back.png', 'Zrób kopię zapasową danych.', 'Back up the data.', 'Czy masz kopię zapasową?', 'Do you have a back up?'),
	('płyta główna', 'motherboard', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\plyta.png', 'Muszę wymienić płytę główną.', 'I need to replace the motherboard.', 'Płyta główna jest uszkodzona.', 'The motherboard is damaged.'),
	('odzyskać', 'recover', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\odzyskac.png', 'Czy możesz odzyskać te pliki?', 'Can you recover these files?', 'Muszę odzyskać moje hasło.', 'I need to recover my password.'),
	('wymienić', 'replace', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\rep.png', 'Muszę wymienić baterię.', 'I need to replace the battery.', 'Czy możesz wymienić ten monitor?', 'Can you replace this monitor?'),
	('zapisać', 'save', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\save.png', 'Nie zapomnij zapisać swojej pracy.', 'Don''t forget to save your work.', 'Musisz zapisać dokument.', 'You need to save the document.'),
	('gwarancja', 'warranty', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\gwar.png', 'Produkt jest objęty gwarancją.', 'The product is under warranty.', 'Jak długa jest gwarancja?', 'How long is the warranty?'),
	('komputer stacjonarny', 'desktop computer', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\komp.png', 'Mam nowy komputer stacjonarny.', 'I have a new desktop computer.', 'Komputer stacjonarny jest bardziej wydajny.', 'A desktop computer is more powerful.'),
	('monitor', 'display', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\ekran.png', 'Kupiłem nowy monitor.', 'I bought a new display.', 'Monitor jest uszkodzony.', 'The display is damaged.'),
	('oprogramowanie', 'software', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\plyta2.png', 'To jest nowe oprogramowanie.', 'This is new software.', 'Czy zainstalowałeś oprogramowanie?', 'Did you install the software?'),
	('tekst bez formatowania', 'plain text', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\tekst.png', 'Wyślij wiadomość jako tekst bez formatowania.', 'Send the message as plain text.', 'Czy mogę otrzymać plik w formacie tekstu bez formatowania?', 'Can I get the file in plain text format?'),
	('system operacyjny', 'operating system', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\system.png', 'Zaktualizuj system operacyjny.', 'Update the operating system.', 'Jaki masz system operacyjny?', 'What operating system do you have?'),
	('producent', 'manufacturer', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\prod.png', 'Kto jest producentem tego komputera?', 'Who is the manufacturer of this computer?', 'Producent oferuje dwuletnią gwarancję.', 'The manufacturer offers a two-year warranty.'),
	('w chmurze', 'in a cloud', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\cloud.png', 'Moje pliki są przechowywane w chmurze.', 'My files are stored in a cloud.', 'Możesz uzyskać dostęp do danych w chmurze.', 'You can access the data in a cloud.'),
	('przewód ładowania', 'charging cable', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\przewod.png', 'Czy masz przewód ładowania?', 'Do you have a charging cable?', 'Mój przewód ładowania jest uszkodzony.', 'My charging cable is damaged.'),
	('wyskakujący komunikat', 'pop up message', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\komun.png', 'Pojawił się wyskakujący komunikat.', 'A pop up message appeared.', 'Jak mogę wyłączyć wyskakujące komunikaty?', 'How can I disable pop up messages?'),
	('ustawić', 'set up', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\set.png', 'Muszę ustawić nowy komputer.', 'I need to set up the new computer.', 'Czy możesz ustawić to dla mnie?', 'Can you set this up for me?'),
	('odblokować', 'unlock', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\unlock.png', 'Muszę odblokować mój telefon.', 'I need to unlock my phone.', 'Czy możesz odblokować te drzwi?', 'Can you unlock this door?'),
	('prawo autorskie', 'copyright', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\prawa.png', 'Ten obraz jest chroniony prawem autorskim.', 'This image is protected by copyright.', 'Czy masz prawo autorskie do tego utworu?', 'Do you have the copyright to this work?'),
	('ustawienia', 'settings', 7, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons9\\set.png', 'Sprawdź swoje ustawienia.', 'Check your settings.', 'Muszę zmienić ustawienia.', 'I need to change the settings.');
    
    
DROP TABLE chapter_nine;