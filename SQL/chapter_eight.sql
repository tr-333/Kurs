USE chapter_eight;

CREATE TABLE chapter_eight
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

INSERT INTO chapter_eight(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('powieść', 'novel', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\novel.png', 'Czytałem fascynującą powieść.', 'I read a fascinating novel.', 'Czy masz ulubioną powieść?', 'Do you have a favorite novel?'),
	('spis treści', 'table of contents', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\spis.png', 'Spis treści znajduje się na początku książki.', 'The table of contents is at the beginning of the book.', 'Spójrz na spis treści, aby znaleźć rozdział.', 'Look at the table of contents to find the chapter.'),
	('rozdział', 'chapter', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\chapter.png', 'Ten rozdział jest bardzo długi.', 'This chapter is very long.', 'Następny rozdział jest jeszcze ciekawszy.', 'The next chapter is even more interesting.'),
	('rękopis', 'manuscript', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\manuscript.png', 'Pracuję nad rękopisem swojej pierwszej książki.', 'I am working on the manuscript of my first book.', 'Rękopis został zaakceptowany przez wydawnictwo.', 'The manuscript was accepted by the publisher.'),
	('egzemplarz', 'copy', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\copy.png', 'Kupiłem nowy egzemplarz tej książki.', 'I bought a new copy of this book.', 'Czy możesz mi pożyczyć swój egzemplarz?', 'Can you lend me your copy?'),
	('oprawić', 'binding', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\bind.png', 'Oprawiłem książkę w skórę.', 'I bound the book in leather.', 'Czy można oprawić tę książkę?', 'Can this book be bound?'),
	('tom', 'volume', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\bind.png', 'To jest pierwszy tom serii.', 'This is the first volume of the series.', 'Brakuje mi trzeciego tomu.', 'I am missing the third volume.'),
	('okładka', 'cover', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\cover.png', 'Okładka tej książki jest piękna.', 'The cover of this book is beautiful.', 'Okładka przyciągnęła moją uwagę.', 'The cover caught my attention.'),
	('tytuł', 'title', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\title.png', 'Jaki jest tytuł tej książki?', 'What is the title of this book?', 'Tytuł jest bardzo intrygujący.', 'The title is very intriguing.'),
	('czytać między wierszami', 'read between the lines', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\miedzy.png', 'Trzeba czytać między wierszami, żeby to zrozumieć.', 'You need to read between the lines to understand this.', 'Nauczyciel zawsze mówi, żeby czytać między wierszami.', 'The teacher always says to read between the lines.'),
	('pisarz/ autor', 'writer', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\writer.png', 'Ten pisarz jest bardzo znany.', 'This writer is very famous.', 'Autor tej książki mieszka w Londynie.', 'The author of this book lives in London.'),
	('dostosować', 'adjust', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\adjust.png', 'Muszę dostosować mój plan.', 'I need to adjust my plan.', 'Czy można dostosować ustawienia?', 'Can the settings be adjusted?'),
	('księgarnia', 'bookstore', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\bok.png',  'Kupiłem tę książkę w księgarni.', 'I bought this book at the bookstore.', 'Czy jest tu jakaś dobra księgarnia?', 'Is there a good bookstore around here?'),
	('lektura', 'set book', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\book.png', 'Ta książka jest moją ulubioną lekturą.', 'This book is my favorite set book.', 'Muszę przeczytać lekturę na jutro.', 'I have to read the set book for tomorrow.'),
	('nowo wydany', 'newly published', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\nowy.png', 'To jest nowo wydana książka.', 'This is a newly published book.', 'Czytałeś nowo wydaną powieść?', 'Have you read the newly published novel?'),
	('wypożyczyć', 'check out', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\wyp.png', 'Czy mogę wypożyczyć tę książkę?', 'Can I check out this book?', 'Wypożyczyłem kilka książek z biblioteki.', 'I checked out a few books from the library.'),
	('postać', 'character', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\postac.png', 'Moja ulubiona postać to Harry Potter.', 'My favorite character is Harry Potter.', 'Główna postać tej książki jest bardzo interesująca.', 'The main character of this book is very interesting.'),
	('poradnik', 'self help book', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\help.png', 'Czytałem świetny poradnik o zarządzaniu czasem.', 'I read a great self-help book on time management.', 'Polecam ten poradnik każdemu.', 'I recommend this self-help book to everyone.'),
	('gatunek', 'genre', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\genre.png', 'Mój ulubiony gatunek literacki to fantasy.', 'My favorite literary genre is fantasy.', 'Jaki jest twój ulubiony gatunek?', 'What is your favorite genre?'),
	('komiks', 'comic book', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\komiks.png', 'Mam dużą kolekcję komiksów.', 'I have a large collection of comic books.', 'Czytałeś ten komiks?', 'Have you read this comic book?'),
	('baśń', 'fairytale', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\basn.png', 'Czytałem piękną baśń na dobranoc.', 'I read a beautiful fairytale for bedtime.', 'Ta baśń jest bardzo znana.', 'This fairytale is very well-known.'),
	('książeczka obrazkowa', 'picture book', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\book2.png', 'Moje dziecko uwielbia książeczki obrazkowe.', 'My child loves picture books.', 'Kupiłem nową książeczkę obrazkową.', 'I bought a new picture book.'),
	('pamiętnik', 'diary', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\pamietnik.png', 'Piszę w moim pamiętniku codziennie.', 'I write in my diary every day.', 'Znalazłem stary pamiętnik mojej babci.', 'I found my grandmother’s old diary.'),
	('przewodnik', 'guide', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\guide.png', 'Kupiłem przewodnik po Paryżu.', 'I bought a guide to Paris.', 'Czy masz przewodnik po muzeum?', 'Do you have a museum guide?'),
	('dziennik', 'journal', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\journal.png', 'Zacząłem prowadzić dziennik.', 'I started keeping a journal.', 'Czy widziałeś mój dziennik?', 'Have you seen my journal?'),
	('podręcznik', 'textbook', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\textbook.png', 'Muszę kupić nowy podręcznik do matematyki.', 'I need to buy a new math textbook.', 'Zapomniałem podręcznika w domu.', 'I forgot my textbook at home.'),
	('zakładka', 'bookmark', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\zakladka.png', 'Używam zdjęcia jako zakładki.', 'I use a photo as a bookmark.', 'Czy możesz mi pożyczyć zakładkę?', 'Can you lend me a bookmark?'),
	('strona tytułowa', 'full title page', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\one.png', 'Na stronie tytułowej jest piękna ilustracja.', 'There is a beautiful illustration on the full title page.', 'Sprawdź stronę tytułową tej książki.', 'Check the full title page of this book.'),
	('wstęp', 'introduction', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\wstep.png', 'Wstęp do tej książki jest bardzo ciekawy.', 'The introduction to this book is very interesting.', 'Czy przeczytałeś wstęp?', 'Have you read the introduction?'),
	('fabuła', 'plot', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\fabula.png',  'Fabuła tej książki jest skomplikowana.', 'The plot of this book is complex.', 'Opowiedz mi fabułę tej historii.', 'Tell me the plot of this story.'),
	('bohater', 'protagonist', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\boh.png', 'Główny bohater tej książki jest bardzo odważny.', 'The protagonist of this book is very brave.', 'Kim jest bohater tej powieści?', 'Who is the protagonist of this novel?');
    
INSERT INTO chapter_eight(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('napisy', 'subtitles', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\napisy.png', 'Czytanie napisów pomaga w nauce języków.', 'Reading subtitles helps in language learning.', 'Czy wolisz filmy z napisami czy z dubbingiem?', 'Do you prefer movies with subtitles or dubbing?'),
	('odcinek', 'episode', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\epi.png', 'Oglądałem wczoraj najnowszy odcinek.', 'I watched the latest episode yesterday.', 'Ile odcinków ma ten serial?', 'How many episodes does this series have?'),
	('wypożyczalnia wideo', 'video rental store', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\video.png', 'Wypożyczyłem film z wypożyczalni wideo.', 'I rented a movie from the video rental store.', 'Czy są jeszcze wypożyczalnie wideo?', 'Are there still any video rental stores?'),
	('program/ sztuka', 'show', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\show.png', 'Ten program jest bardzo popularny.', 'This show is very popular.', 'Idziemy na sztukę do teatru.', 'We are going to a show at the theater.'),
	('wypożyczyć film', 'rent a movie', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\video.png', 'Chcę wypożyczyć film na wieczór.', 'I want to rent a movie for the evening.', 'Czy mogę wypożyczyć ten film na weekend?', 'Can I rent this movie for the weekend?'),
	('kino', 'cinema', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\kino.png', 'Idziemy do kina na nowy film.', 'We are going to the cinema to watch a new movie.', 'Czy wolisz kino czy oglądanie filmów w domu?', 'Do you prefer the cinema or watching movies at home?'),
	('sezon', 'season', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\epi.png', 'Oglądam teraz trzeci sezon tego serialu.', 'I am currently watching the third season of this series.', 'Kiedy zaczyna się nowy sezon?', 'When does the new season start?'),
	('na żywo na koncercie', 'live in concert', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\koncert.png', 'Widziałem ich na żywo na koncercie.', 'I saw them live in concert.', 'Czy kiedykolwiek byłeś na żywo na koncercie?', 'Have you ever been to a live concert?'),
	('twórczość filmowa', 'filmmaking', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\film.png', 'Interesuję się twórczością filmową.', 'I am interested in filmmaking.', 'Czy kiedykolwiek próbowałeś twórczości filmowej?', 'Have you ever tried filmmaking?'),
	('serial komediowy', 'sitcom', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\sitcom.png', 'To mój ulubiony serial komediowy.', 'This is my favorite sitcom.', 'Czy oglądałeś ten nowy serial komediowy?', 'Have you watched this new sitcom?'),
	('program rozrywkowy', 'variety show', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\rel.png', 'Ten program rozrywkowy jest bardzo zabawny.', 'This variety show is very funny.', 'Czy oglądasz ten program rozrywkowy?', 'Do you watch this variety show?'),
	('prowadzący', 'host', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\prowadzacy.png', 'Prowadzący tego programu jest bardzo charyzmatyczny.', 'The host of this show is very charismatic.', 'Kto jest prowadzącym tego programu?', 'Who is the host of this show?'),
	('premiera kinowa', 'cinematic release', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\new.png', 'Premiera kinowa tego filmu jest za tydzień.', 'The cinematic release of this movie is next week.', 'Czy idziesz na premierę kinową?', 'Are you going to the cinematic release?'),
	('kreskówka', 'cartoon', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\kres.png', 'Moje dzieci uwielbiają oglądać kreskówki.', 'My kids love watching cartoons.', 'Czy pamiętasz tę starą kreskówkę?', 'Do you remember that old cartoon?'),
	('widowiskowy', 'spectacular', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\spek.png', 'To był widowiskowy pokaz fajerwerków.', 'It was a spectacular fireworks display.', 'Widok z góry jest widowiskowy.', 'The view from the top is spectacular.'),
	('wyprzedać bilety', 'sell out', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\brak.png', 'Bilety na koncert wyprzedały się w godzinę.', 'Tickets for the concert sold out in an hour.', 'Czy bilety na ten film już się wyprzedały?', 'Have the tickets for this movie sold out yet?'),
	('największe przeboje', 'greatest hits', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\star.png', 'Album zawiera ich największe przeboje.', 'The album contains their greatest hits.', 'To są największe przeboje lat 80.', 'These are the greatest hits of the 80s.'),
	('rodzaj muzyki', 'type of music', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\muza.png', 'Jaki jest twój ulubiony rodzaj muzyki?', 'What is your favorite type of music?', 'Słucham różnych rodzajów muzyki.', 'I listen to different types of music.'),
	('bieżące wydarzenia', 'current affairs', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\live.png', 'Interesuję się bieżącymi wydarzeniami.', 'I am interested in current affairs.', 'Czy oglądasz programy o bieżących wydarzeniach?', 'Do you watch shows about current affairs?'),
	('teleturniej', 'game show', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\program.png', 'Ten teleturniej jest bardzo popularny.', 'This game show is very popular.', 'Czy kiedykolwiek brałeś udział w teleturnieju?', 'Have you ever participated in a game show?'),
	('wiadomości', 'news program', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons8\\radio.png', 'Oglądam wiadomości codziennie rano.', 'I watch the news program every morning.', 'Czy oglądałeś wiadomości dzisiaj?', 'Did you watch the news program today?');
    
SELECT *FROM chapter_eight;
    
DROP TABLE chapter_eight;