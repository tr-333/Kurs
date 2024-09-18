USE chapter_five;

CREATE TABLE chapter_five
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

INSERT INTO chapter_five(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('kariera', 'career', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\kariera.png', 'Chcę rozwijać swoją karierę.', 'I want to develop my career.', 'Moja kariera zawodowa jest na właściwej ścieżce.', 'My career is on the right track.'),
	('branża', 'business', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\biznes.png', 'Pracuję w branży IT.', 'I work in the IT business.', 'Branża modowa jest bardzo konkurencyjna.', 'The fashion business is very competitive.'),
	('szukać pracy', 'look for a job', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\jak.png', 'Szukałem pracy przez kilka miesięcy.', 'I looked for a job for several months.', 'Czy nadal szukasz pracy?', 'Are you still looking for a job?'),
	('ubiegac się o', 'apply for', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\ubiegac.png', 'Zamierzam ubiegać się o to stanowisko.', 'I intend to apply for this position.', 'Czy ubiegałeś się o inne oferty?', 'Have you applied for other positions?'),
	('stanowisko', 'position', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pozycja.png', 'Dostałem nowe stanowisko w firmie.', 'I got a new position in the company.', 'To stanowisko wymaga dużo doświadczenia.', 'This position requires a lot of experience.'),
	('zarządzać', 'manage', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\manag.png', 'Zarządzam dużym zespołem.', 'I manage a large team.', 'Kto zarządza tym projektem?', 'Who manages this project?'),
	('dział', 'department', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\dzial.png', 'Pracuję w dziale marketingu.', 'I work in the marketing department.', 'Dział IT jest bardzo ważny.', 'The IT department is very important.'),
	('kandydat', 'candidate', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\biuro.png', 'Mamy kilku kandydatów na to stanowisko.', 'We have several candidates for this position.', 'Kandydat na to stanowisko musi mieć doświadczenie.', 'The candidate for this position must have experience.'),
	('słaba strona', 'weakness', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\slabo.png', 'Moja słaba strona to brak doświadczenia.', 'My weakness is the lack of experience.', 'Jakie są twoje słabe strony?', 'What are your weaknesses?'),
	('bezrobotny', 'unemployed', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\bez.png', 'Jestem bezrobotny od miesiąca.', 'I have been unemployed for a month.', 'Bycie bezrobotnym jest trudne.', 'Being unemployed is difficult.'),
	('urząd pracy', 'job centre', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\dzial.png', 'Idę do urzędu pracy.', 'I am going to the job centre.', 'Urząd pracy pomoże ci znaleźć pracę.', 'The job centre will help you find a job.'),
	('umowa na czas określony', 'fixed term contract', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\okresl.png', 'Mam umowę na czas określony.', 'I have a fixed-term contract.', 'Czy możesz pracować na umowę na czas określony?', 'Can you work on a fixed-term contract?'),
	('rekrutować', 'recruit', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\rekrut.png', 'Firma rekrutuje nowych pracowników.', 'The company is recruiting new employees.', 'Rekrutacja trwa do końca miesiąca.', 'Recruitment is ongoing until the end of the month.'),
	('umiejętności', 'skill', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\skil.png', 'Mam dobre umiejętności komunikacyjne.', 'I have good communication skills.', 'Jakie umiejętności są wymagane na tym stanowisku?', 'What skills are required for this position?'),
	('doświadczenie', 'experience', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\doswiadczenie.png', 'Mam pięć lat doświadczenia w tej branży.', 'I have five years of experience in this industry.', 'Twoje doświadczenie jest imponujące.', 'Your experience is impressive.'),
	('poprzedni pracodawca', 'prevoius employer', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\poprzedni.png', 'Mój poprzedni pracodawca był bardzo wymagający.', 'My previous employer was very demanding.', 'Mam dobre referencje od poprzedniego pracodawcy.', 'I have good references from my previous employer.'),
	('zatrudnić', 'employ', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\zatrudnic.png', 'Zatrudniamy nowych pracowników.', 'We are employing new staff.', 'Czy firma planuje zatrudnić więcej ludzi?', 'Is the company planning to employ more people?'),
	('szybko się uczę', 'I''m a fast learner', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\szybko.png', 'Jestem szybkim uczniem.', 'I am a fast learner.', 'Szybko się uczę nowych rzeczy.', 'I learn new things quickly.'),
	('Czy może pani zacząć od razu?', 'Can you start immediately?', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\start.png', 'Czy może pani zacząć od razu?', 'Can you start immediately?', 'Czy może pan zacząć od zaraz?', 'Can you start immediately?'),
	('praca w godzinach', 'The hours are', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\godzina.png', 'Pracuję w godzinach 9-17.', 'The hours are 9 to 5.', 'Moje godziny pracy są elastyczne.', 'My working hours are flexible.'),
	('spóźnić się', 'run late', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\spoznic.png', 'Spóźniłem się na spotkanie.', 'I ran late for the meeting.', 'Czy często się spóźniasz?', 'Do you often run late?'),
	('rozmowa rekrutacyjna', 'job interview', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\rozmowa.png', 'Mam rozmowę rekrutacyjną jutro.', 'I have a job interview tomorrow.', 'Rozmowa rekrutacyjna poszła dobrze.', 'The job interview went well.'),
	('pracowity', 'hardworking', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pracowity.png', 'Jestem bardzo pracowity.', 'I am very hardworking.', 'Pracowici ludzie są cenieni.', 'Hardworking people are valued.'),
	('rekomendacja', 'recommendation', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\polec.png', 'Mam list rekomendacyjny od mojego nauczyciela.', 'I have a recommendation letter from my teacher.', 'Czy możesz napisać mi rekomendację?', 'Can you write me a recommendation?'),
	('list motywacyjny', 'cover letter', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\list.png', 'Załączam mój list motywacyjny.', 'I am attaching my cover letter.', 'Czy napisałeś już list motywacyjny?', 'Have you written your cover letter?'),
	('zawód', 'proffesion', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\zawod.png', 'Moim zawodem jest nauczyciel.', 'My profession is a teacher.', 'Jaki jest twój zawód?', 'What is your profession?'),
	('elastyczny', 'flexible', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\elast.png', 'Jestem elastyczny w kwestii godzin pracy.', 'I am flexible with my working hours.', 'Czy jesteś elastyczny w pracy?', 'Are you flexible at work?'),
	('praca w zespole', 'teamwork', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\team.png', 'Praca w zespole jest dla mnie ważna.', 'Teamwork is important to me.', 'Czy lubisz pracować w zespole?', 'Do you like teamwork?'),
	('cecha', 'attribute', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\cecha.png', 'Twoja cecha to kreatywność.', 'Your attribute is creativity.', 'Jakie cechy są ważne w tej pracy?', 'What attributes are important in this job?'),
	('oczekiwania finansowe', 'salary expectations', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\kasa.png', 'Moje oczekiwania finansowe są wysokie.', 'My salary expectations are high.', 'Jakie są twoje oczekiwania finansowe?', 'What are your salary expectations?'),
	('dni wolne/ urlop', 'leave', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\urlop.png', 'Mam dwa dni wolne w tygodniu.', 'I have two days of leave per week.', 'Ile masz dni wolnych?', 'How many days of leave do you have?'),
	('pracować na cały etat', 'work full time', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\full.png', 'Pracuję na cały etat.', 'I work full time.', 'Czy pracujesz na cały etat?', 'Do you work full time?'),
	('pracawać na pół etatu', 'work part time', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pol.png', 'Pracuję na pół etatu.', 'I work part time.', 'Czy szukasz pracy na pół etatu?', 'Are you looking for a part-time job?'),
	('plan zajęć', 'schedule', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\plan.png', 'Mój plan zajęć jest napięty.', 'My schedule is tight.', 'Potrzebuję planu zajęć.', 'I need a schedule.'),
	('z większym doświadczeniem', 'with more experience', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\wieksze.png', 'Szukam kogoś z większym doświadczeniem.', 'I am looking for someone with more experience.', 'Z większym doświadczeniem będziesz lepiej zarabiał.', 'With more experience, you will earn better.'),
	('zgodnie z umową', 'by contract', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\kontrakt.png', 'Działam zgodnie z umową.', 'I act by contract.', 'Pracujemy zgodnie z umową.', 'We work by contract.'),
	('przeoczyć', 'overlook', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\przeoczyc.png', 'Przeoczyłem ważne spotkanie.', 'I overlooked an important meeting.', 'Nie mogę przeoczyć tego zadania.', 'I cannot overlook this task.'),
	('wypłata', 'pay', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pay.png', 'Moja wypłata jest na koniec miesiąca.', 'My pay is at the end of the month.', 'Czekam na moją wypłatę.', 'I am waiting for my pay.'),
	('sprawa pilna', 'pressing matter', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pilne.png', 'To jest sprawa pilna.', 'This is a pressing matter.', 'Musimy zająć się tą sprawą pilnie.', 'We need to address this pressing matter.'),
	('termin', 'deadline', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\czas.png', 'Termin oddania raportu to piątek.', 'The deadline for the report is Friday.', 'Czy zdążysz przed terminem?', 'Will you meet the deadline?'),
	('zadanie', 'task', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\task.png', 'Mam ważne zadanie do wykonania.', 'I have an important task to complete.', 'To zadanie jest trudne.', 'This task is difficult.'),
	('raport roczny', 'annual report', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\rok.png', 'Przygotowuję raport roczny.', 'I am preparing the annual report.', 'Raport roczny jest gotowy.', 'The annual report is ready.'),
	('zmiana', 'shift', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\zmiana.png', 'Mam nocną zmianę.', 'I have a night shift.', 'Zmiana zaczyna się o ósmej.', 'The shift starts at eight.'),
	('podwyżka', 'rise', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\rise.png', 'Proszę o podwyżkę.', 'I am asking for a raise.', 'Dostałem podwyżkę.', 'I got a raise.'),
	('pensja roczna', 'annual salary', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\pay.png', 'Moja pensja roczna jest dobra.', 'My annual salary is good.', 'Czy twoja pensja roczna jest satysfakcjonująca?', 'Is your annual salary satisfactory?'),
	('nadgodziny', 'overtime', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\nad.png', 'Pracuję w nadgodzinach.', 'I work overtime.', 'Czy możesz pracować w nadgodzinach?', 'Can you work overtime?'),
	('pracować na zmiany', 'work shifts', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\zmiany.png', 'Pracuję na zmiany.', 'I work shifts.', 'Zmiany w pracy są trudne.', 'Working shifts is tough.'),
	('wypowiedzenie umowy', 'resignation', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\wypowiedzenie.png', 'Złożyłem wypowiedzenie umowy.', 'I submitted my resignation.', 'Czy złożysz wypowiedzenie umowy?', 'Will you submit your resignation?'),
	('przejść na emeryturę', 'retire', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\emeryt2.png', 'Zamierzam przejść na emeryturę.', 'I plan to retire.', 'Kiedy przechodzisz na emeryturę?', 'When are you retiring?'),
	('emerytura', 'retirement', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\emeryt.png', 'Jestem na emeryturze od roku.', 'I have been in retirement for a year.', 'Jakie plany masz na emeryturę?', 'What plans do you have for your retirement?'),
	('delegacja', 'bussiness trip', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons5\\trip.png', 'Mam delegację do Londynu.', 'I have a business trip to London.', 'Czy często jeździsz na delegacje?', 'Do you often go on business trips?');

SELECT *FROM chapter_five;

DROP TABLE chapter_five;