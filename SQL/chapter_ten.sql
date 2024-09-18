USE chapter_ten;

CREATE TABLE chapter_ten
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

INSERT INTO chapter_ten(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('ekologiczny', 'eco', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\eco.png', 'Kupuję tylko produkty ekologiczne.', 'I only buy eco products.', 'To jest ekologiczny samochód.', 'This is an eco-friendly car.'),
	('posprzątać', 'clean up', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\clean.png', 'Musimy posprzątać plażę.', 'We need to clean up the beach.', 'Posprzątaj swój pokój.', 'Clean up your room.'),
	('klimatyzator', 'air conditioner', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\klima.png', 'Zainstalowaliśmy nowy klimatyzator.', 'We installed a new air conditioner.', 'Klimatyzator jest zepsuty.', 'The air conditioner is broken.'),
	('z odzysku', 'reclaimed', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\odzysk.png', 'Meble są zrobione z drewna z odzysku.', 'The furniture is made from reclaimed wood.', 'Kupuję rzeczy z odzysku.', 'I buy reclaimed items.'),
	('prądożerny', 'power hungry', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\power.png', 'To urządzenie jest bardzo prądożerne.', 'This device is very power hungry.', 'Musimy unikać prądożernych sprzętów.', 'We need to avoid power hungry appliances.'),
	('zasilany energią słoneczną', 'solar powered', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\solar.png', 'Mamy zasilany energią słoneczną system oświetlenia.', 'We have a solar powered lighting system.', 'Panel słoneczny jest zasilany energią słoneczną.', 'The solar panel is solar powered.'),
	('sieć', 'grid', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\siec.png', 'Jestem podłączony do sieci.', 'I am connected to the grid.', 'Sieć energetyczna wymaga modernizacji.', 'The power grid needs upgrading.'),
	('ekologiczny', 'green', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\green.png', 'Mieszkamy w ekologicznej dzielnicy.', 'We live in a green neighborhood.', 'To jest ekologiczny projekt.', 'This is a green project.'),
	('susza', 'drought', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\susza.png', 'Region cierpi na suszę.', 'The region is suffering from a drought.', 'Susza zniszczyła plony.', 'The drought destroyed the crops.'),
	('jednorazowy', 'disposable', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\jedno.png', 'Używam jednorazowych rękawiczek.', 'I use disposable gloves.', 'Jednorazowe produkty są szkodliwe dla środowiska.', 'Disposable products are harmful to the environment.'),
	('zagrożony wymarciem', 'endangered', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\wymar.png', 'Te gatunki są zagrożone wymarciem.', 'These species are endangered.', 'Musimy chronić zagrożone gatunki.', 'We need to protect endangered species.'),
	('odnawialny', 'sustainable', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\odnawialny.png', 'Używamy odnawialnych źródeł energii.', 'We use sustainable energy sources.', 'To jest odnawialna metoda.', 'This is a sustainable method.'),
	('prąd', 'electricity', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\prad.png', 'Nie ma prądu w domu.', 'There is no electricity in the house.', 'Prąd jest drogi.', 'Electricity is expensive.'),
	('zasoby', 'supply', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\suply.png', 'Mamy ograniczone zasoby wody.', 'We have a limited water supply.', 'Zapasy żywności są niskie.', 'The food supply is low.'),
	('segregować', 'segregate', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\bin.png', 'Segregujemy śmieci.', 'We segregate garbage.', 'Musisz segregować odpady.', 'You need to segregate waste.'),
	('śmieci', 'garbage', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\smieci.png', 'Śmieci muszą być wywiezione.', 'The garbage needs to be taken out.', 'Wyrzuć śmieci.', 'Throw out the garbage.'),
	('globalne ocieplenie', 'global warming', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\global.png', 'Globalne ocieplenie jest poważnym problemem.', 'Global warming is a serious issue.', 'Musimy walczyć z globalnym ociepleniem.', 'We need to combat global warming.'),
	('oszczędzać', 'economize', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\swinka.png', 'Musimy oszczędzać wodę.', 'We need to economize water.', 'Oszczędzaj energię.', 'Economize energy.'),
	('środowisko', 'environment', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\srod.png', 'Musimy chronić środowisko.', 'We need to protect the environment.', 'Środowisko naturalne jest zagrożone.', 'The natural environment is at risk.'),
	('marnować/ wyrzucać', 'waste', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\waste.png', 'Nie marnuj jedzenia.', 'Don''t waste food.', 'Marnowanie zasobów jest nieodpowiedzialne.', 'Wasting resources is irresponsible.'),
	('zagrożenie dla zdrowia', 'health hazard', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\bio.png', 'Te substancje są zagrożeniem dla zdrowia.', 'These substances are a health hazard.', 'Palenie jest zagrożeniem dla zdrowia.', 'Smoking is a health hazard.'),
	('kryzys klimatyczny', 'climate crisis', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\klimat.png', 'Świat stoi przed kryzysem klimatycznym.', 'The world is facing a climate crisis.', 'Musimy działać, aby zapobiec kryzysowi klimatycznemu.', 'We need to act to prevent the climate crisis.'),
	('poddać recyklingowi', 'recycle', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\odzysk.png', 'Musisz poddać to recyklingowi.', 'You need to recycle this.', 'Recykling jest ważny dla środowiska.', 'Recycling is important for the environment.'),
	('topnieć', 'melt', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\topniec.png', 'Lód na biegunach topnieje.', 'The ice at the poles is melting.', 'Masło topnieje na słońcu.', 'The butter is melting in the sun.'),
	('katastrofa ekologiczna', 'environmental disaster', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\oil.png', 'Wycieki ropy to katastrofa ekologiczna.', 'Oil spills are an environmental disaster.', 'To była prawdziwa katastrofa ekologiczna.', 'It was a real environmental disaster.'),
	('zasoby naturalne', 'natural resources', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\natura.png', 'Musimy oszczędzać zasoby naturalne.', 'We need to conserve natural resources.', 'Zasoby naturalne są ograniczone.', 'Natural resources are limited.'),
	('wycinka lasów', 'deforestation', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\pien.png', 'Wycinka lasów to poważny problem.', 'Deforestation is a serious problem.', 'Musimy zatrzymać wycinkę lasów.', 'We need to stop deforestation.'),
	('produkcja', 'manufacture', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\manu.png', 'Produkcja przemysłowa jest szkodliwa dla środowiska.', 'Industrial manufacture is harmful to the environment.', 'Produkcja wzrosła o 10%.', 'Manufacture increased by 10%.'),
	('dwutlenek węgla', 'carbon dioxide', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\carbon.png', 'Emisje dwutlenku węgla są zbyt wysokie.', 'Carbon dioxide emissions are too high.', 'Rośliny pochłaniają dwutlenek węgla.', 'Plants absorb carbon dioxide.'),
	('deszczówka', 'rainwater', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\rain.png', 'Zbieramy deszczówkę do podlewania roślin.', 'We collect rainwater for watering plants.', 'Deszczówka jest czystym źródłem wody.', 'Rainwater is a clean water source.'),
	('próbka', 'sample', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\sample.png', 'Musimy pobrać próbkę gleby.', 'We need to take a soil sample.', 'Przeanalizujmy próbkę wody.', 'Let''s analyze the water sample.'),
	('worek na śmieci', 'trash bag', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\worek.png', 'Potrzebuję nowego worka na śmieci.', 'I need a new trash bag.', 'Worek na śmieci jest pełny.', 'The trash bag is full.'),
	('pompa ciepła', 'heat pump', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\hit.png', 'Zainstalowaliśmy nową pompę ciepła.', 'We installed a new heat pump.', 'Pompa ciepła jest bardziej efektywna.', 'The heat pump is more efficient.'),
	('izolacja', 'insulation', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\welna.png', 'Dobra izolacja oszczędza energię.', 'Good insulation saves energy.', 'Dom potrzebuje lepszej izolacji.', 'The house needs better insulation.'),
	('energia odnawialna', 'renewable energy', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\ener.png', 'Musimy inwestować w energię odnawialną.', 'We need to invest in renewable energy.', 'Energia odnawialna jest przyszłością.', 'Renewable energy is the future.'),
	('wiatrak', 'wind turbine', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\ener.png', 'Zainstalowano nowy wiatrak.', 'A new wind turbine was installed.', 'Wiatraki generują energię elektryczną.', 'Wind turbines generate electricity.'),
	('spaliny', 'exhaust fumes', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\spaliny.png', 'Samochody emitują spaliny.', 'Cars emit exhaust fumes.', 'Spaliny są szkodliwe dla zdrowia.', 'Exhaust fumes are harmful to health.'),
	('ekolog', 'environmentalist', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\ekolog.png', 'Mój brat jest ekologiem.', 'My brother is an environmentalist.', 'Ekolodzy walczą o ochronę przyrody.', 'Environmentalists fight for nature conservation.'),
	('ekologia', 'environmental studies', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\eko2.png', 'Studiuję ekologię.', 'I study environmental studies.', 'Ekologia jest ważną dziedziną nauki.', 'Environmental studies is an important field.'),
	('zanieczyszczenie', 'pollution', 4, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons10\\zanie.png', 'Zanieczyszczenie powietrza jest poważnym problemem.', 'Air pollution is a serious problem.', 'Musimy zmniejszyć zanieczyszczenie wód.', 'We need to reduce water pollution.');

SELECT *FROM chapter_ten;