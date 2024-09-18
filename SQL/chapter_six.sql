USE chapter_six;

CREATE TABLE chapter_six
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

INSERT INTO chapter_six(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('wypłata', 'paycheck', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\pay.png', 'Otrzymałem moją wypłatę.', 'I received my paycheck.', 'Kiedy jest dzień wypłaty?', 'When is payday?'),
	('wspólne konto', 'joint account', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\konto.png', 'Mamy wspólne konto bankowe.', 'We have a joint account.', 'Czy możemy otworzyć wspólne konto?', 'Can we open a joint account?'),
	('odsetki', 'interest', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\procent.png', 'Odsetki od pożyczki są wysokie.', 'The interest on the loan is high.', 'Bank nalicza odsetki co miesiąc.', 'The bank charges interest monthly.'),
	('zdeponować', 'deposit', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\depozyt.png', 'Zdeponowałem pieniądze na konto.', 'I deposited money into the account.', 'Czy mogę zdeponować czek?', 'Can I deposit a check?'),
	('zeznanie podatkowe', 'tax return', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\tax.png', 'Muszę złożyć zeznanie podatkowe.', 'I need to file my tax return.', 'Złożyłeś już swoje zeznanie podatkowe?', 'Have you filed your tax return yet?'),
	('wydatki', 'expenses', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wydac.png', 'Moje miesięczne wydatki są wysokie.', 'My monthly expenses are high.', 'Jakie są twoje największe wydatki?', 'What are your biggest expenses?'),
	('kosztować', 'cost', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\cost.png', 'Ile to kosztuje?', 'How much does it cost?', 'To kosztowało dużo pieniędzy.', 'It cost a lot of money.'),
	('napiwek', 'tip', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\tip.png', 'Dałem kelnerowi napiwek.', 'I gave the waiter a tip.', 'Czy dałeś napiwek kierowcy?', 'Did you tip the driver?'),
	('waluta', 'currency', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\waluta.png', 'Jaka jest aktualna waluta w Polsce?', 'What is the current currency in Poland?', 'Zmieniliśmy walutę na euro.', 'We changed the currency to euros.'),
	('wydać', 'spend', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wydac2.png', 'Wydałem za dużo pieniędzy na ubrania.', 'I spent too much money on clothes.', 'Muszę ograniczyć wydatki.', 'I need to reduce my spending.'),
	('kieszonkowe', 'pocket money', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\kieszen.png', 'Dostałem kieszonkowe od rodziców.', 'I got pocket money from my parents.', 'Ile dostajesz kieszonkowego?', 'How much pocket money do you get?'),
	('zarobić', 'earn', 1, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\earn.png', 'Zarobiłem pieniądze na letniej pracy.', 'I earned money from my summer job.', 'Jak dużo zarobiłeś w tym miesiącu?', 'How much did you earn this month?'),
	('pożyczyć', 'borrow', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\lend.png', 'Czy mogę pożyczyć od ciebie pieniądze?', 'Can I borrow money from you?', 'Pożyczyłem książkę z biblioteki.', 'I borrowed a book from the library.'),
	('zebrać', 'raise', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\zebrac.png', 'Zebraliśmy fundusze na nowy projekt.', 'We raised funds for the new project.', 'Musimy zebrać więcej pieniędzy.', 'We need to raise more money.'),
	('obciążyć', 'charge', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\obciazyc.png', 'Bank obciążył mnie opłatą.', 'The bank charged me a fee.', 'Opłata za usługę była wysoka.', 'The service charge was high.'),
	('opłata za wstęp', 'cover', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\oplata.png', 'Opłata za wstęp to 10 zł.', 'The cover charge is 10 PLN.', 'Czy musimy zapłacić opłatę za wstęp?', 'Do we need to pay a cover charge?'),
	('banknot', 'note', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\note.png', 'Mam pięćdziesięciozłotowy banknot.', 'I have a fifty-zloty note.', 'Czy masz banknoty o mniejszych nominałach?', 'Do you have notes of smaller denominations?'),
	('moneta', 'coin', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\coin.png', 'Znalazłem starą monetę.', 'I found an old coin.', 'Jaką wartość ma ta moneta?', 'What is the value of this coin?'),
	('konto bankowe', 'bank account', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\bank.png', 'Sprawdzam stan mojego konta bankowego.', 'I am checking my bank account balance.', 'Czy mogę otworzyć nowe konto bankowe?', 'Can I open a new bank account?'),
	('w gotówce', 'in cash', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\note.png', 'Zapłaciłem w gotówce.', 'I paid in cash.', 'Czy możemy zapłacić w gotówce?', 'Can we pay in cash?'),
	('płatność gotówką', 'cash payment', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\note.png', 'Preferuję płatność gotówką.', 'I prefer cash payment.', 'Czy akceptujecie płatność gotówką?', 'Do you accept cash payment?'),
	('przelew', 'transfer', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\przelew.png', 'Wysłałem przelew bankowy.', 'I sent a bank transfer.', 'Czy mogę zrobić przelew online?', 'Can I make a transfer online?'),
	('portfel', 'wallet', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\portfel.png', 'Zgubiłem swój portfel.', 'I lost my wallet.', 'Czy widziałeś mój portfel?', 'Have you seen my wallet?'),
	('cena netto', 'net price', 2, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\net.png', 'Cena netto to 100 zł.', 'The net price is 100 PLN.', 'Jaką cenę netto oferujesz?', 'What net price do you offer?'),
	('reszta', 'change', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\coin.png', 'Proszę o resztę.', 'Please give me the change.', 'Czy masz drobną resztę?', 'Do you have small change?'),
	('płaca minimalna', 'minimum wage', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\min.png', 'Płaca minimalna wzrosła.', 'The minimum wage has increased.', 'Czy znasz aktualną płacę minimalną?', 'Do you know the current minimum wage?'),
	('metka z ceną', 'price tag', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\net.png', 'Metka z ceną jest uszkodzona.', 'The price tag is damaged.', 'Czy możesz pokazać mi metkę z ceną?', 'Can you show me the price tag?'),
	('majątek', 'wealth', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\majatek.png', 'On zgromadził duży majątek.', 'He has accumulated a lot of wealth.', 'Jak zbudować majątek?', 'How to build wealth?'),
	('kupować na raty', 'buy on hire purchase', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\procent.png', 'Kupuję samochód na raty.', 'I am buying a car on hire purchase.', 'Czy można kupić to na raty?', 'Can this be bought on hire purchase?'),
	('dług', 'debt', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\debt.png', 'Mam duży dług.', 'I have a large debt.', 'Jak spłacić długi?', 'How to pay off debts?'),
	('zbankrutować', 'go bankrupt', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\bank2.png', 'Firma zbankrutowała.', 'The company went bankrupt.', 'Jak uniknąć bankructwa?', 'How to avoid going bankrupt?'),
	('spadek', 'inheritance', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\spadek.png', 'Otrzymałem spadek po dziadku.', 'I received an inheritance from my grandfather.', 'Co zamierzasz zrobić ze spadkiem?', 'What do you plan to do with the inheritance?'),
	('paragon', 'receipt', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\paragon.png', 'Potrzebuję paragonu.', 'I need a receipt.', 'Czy mogę dostać paragon?', 'Can I get a receipt?'),
	('faktura', 'invoice', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\faktura.png', 'Proszę o fakturę.', 'Please give me an invoice.', 'Kiedy mogę otrzymać fakturę?', 'When can I get the invoice?'),
	('właściciel konta', 'account holder', 3, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wlasciciel.png', 'Jestem właścicielem tego konta.', 'I am the account holder.', 'Czy mogę zobaczyć właściciela konta?', 'Can I see the account holder?');
    
INSERT INTO chapter_six(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('licytować', 'bid', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\bid.png', 'Licytuję ten obraz.', 'I am bidding on this painting.', 'Czy zamierzasz licytować na aukcji?', 'Are you going to bid at the auction?'),
	('być w domu, gdy przyjedzie', 'be here when he arrives', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\zostac.png', 'Proszę być w domu, gdy przyjedzie.', 'Please be here when he arrives.', 'Czy będziesz w domu, gdy on przyjedzie?', 'Will you be here when he arrives?'),
	('zakupy przez internet', 'shop online', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\online.png', 'Robię zakupy przez internet.', 'I shop online.', 'Czy lubisz zakupy przez internet?', 'Do you like to shop online?'),
	('dodać do koszyka', 'add to the cart', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\kosz.png', 'Dodałem książkę do koszyka.', 'I added the book to the cart.', 'Czy mogę dodać to do koszyka?', 'Can I add this to the cart?'),
	('zalogować się', 'sign in', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\log.png', 'Musisz się zalogować.', 'You need to sign in.', 'Zapomniałem się zalogować.', 'I forgot to sign in.'),
	('utworzyć konto', 'create an account', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wlasciciel.png', 'Utworzyłem nowe konto.', 'I created a new account.', 'Czy pomogłabyś mi utworzyć konto?', 'Could you help me create an account?'),
	('adres do wysyłki', 'shipping address', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\adres.png', 'Podaj swój adres do wysyłki.', 'Please provide your shipping address.', 'Zmieniłem mój adres do wysyłki.', 'I changed my shipping address.'),
	('adres na fakturze', 'billing address', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\fak.png', 'Twój adres na fakturze jest nieprawidłowy.', 'Your billing address is incorrect.', 'Czy możesz zaktualizować adres na fakturze?', 'Can you update the billing address?'),
	('złożyć zamówienie', 'submit an order', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\zlozyc.png', 'Złożyłem zamówienie na nowe buty.', 'I submitted an order for new shoes.', 'Jak mogę złożyć zamówienie?', 'How can I submit an order?'),
	('konsument', 'consumer', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\klient.png', 'Konsument zawsze ma rację.', 'The consumer is always right.', 'Jestem zadowolonym konsumentem.', 'I am a satisfied consumer.'),
	('ocena', 'review', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\ocena.png', 'Napisałem pozytywną ocenę produktu.', 'I wrote a positive review of the product.', 'Czy przeczytałeś najnowsze oceny?', 'Did you read the latest reviews?'),
	('aukcja', 'auction', 5, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\aukcja.png', 'Wygrałem tę aukcję.', 'I won this auction.', 'Czy byłeś na aukcji wczoraj?', 'Were you at the auction yesterday?'),
	('dostawa następnego dnia', 'overnight delivery', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\dostawa.png', 'Dostawa następnego dnia jest dostępna.', 'Overnight delivery is available.', 'Czy oferujecie dostawę następnego dnia?', 'Do you offer overnight delivery?'),
	('zamówić', 'order', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\order.png', 'Zamówiłem pizzę na kolację.', 'I ordered pizza for dinner.', 'Czy zamówiłeś już jedzenie?', 'Have you ordered the food yet?'),
	('weryfikacja', 'verification', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wer.png', 'Wymagana jest weryfikacja konta.', 'Account verification is required.', 'Czy weryfikacja została zakończona?', 'Has the verification been completed?'),
	('odesłać coś', 'send back', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\odeslac.png', 'Muszę odesłać coś do sklepu.', 'I need to send something back to the store.', 'Czy mogę odesłać ten produkt?', 'Can I send this product back?'),
	('pełny zwrot pieniędzy', 'full refund', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\note.png', 'Otrzymałem pełny zwrot pieniędzy.', 'I received a full refund.', 'Czy dostanę pełny zwrot pieniędzy?', 'Will I get a full refund?'),
	('wykonany na zamówienie', 'custom made', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\na.png', 'Mamy wykonany na zamówienie stół.', 'We have a custom-made table.', 'Czy to jest wykonane na zamówienie?', 'Is this custom-made?'),
	('folia bąbelkowa', 'bubble wrap', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\folia.png', 'Zapakuj to w folię bąbelkową.', 'Wrap it in bubble wrap.', 'Gdzie jest folia bąbelkowa?', 'Where is the bubble wrap?'),
	('folia do pakowania', 'plastic wrap', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\folia2.png', 'Użyj folii do pakowania.', 'Use the plastic wrap.', 'Czy masz folię do pakowania?', 'Do you have plastic wrap?'),
	('paczkomat', 'package locker', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\paczka.png', 'Twoja paczka jest w paczkomacie.', 'Your package is in the package locker.', 'Gdzie jest najbliższy paczkomat?', 'Where is the nearest package locker?'),
	('numer przesyłki', 'tracking number', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\numer.png', 'Jaki jest numer przesyłki?', 'What is the tracking number?', 'Czy mogę śledzić przesyłkę za pomocą numeru przesyłki?', 'Can I track the package with the tracking number?'),
	('zapłacić z góry', 'pay in advance', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\gora.png', 'Musisz zapłacić z góry.', 'You need to pay in advance.', 'Czy mogę zapłacić z góry?', 'Can I pay in advance?'),
	('zarejestrować się', 'register', 6, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\reg.png', 'Zarejestrowałem się na stronie.', 'I registered on the website.', 'Czy muszę się zarejestrować?', 'Do I need to register?');
    
INSERT INTO chapter_six(polski, angielski, poziom, obraz, przyklada, przykladb, przykladc, przykladd)
VALUES
	('marka', 'brand', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\marka.png', 'Ta marka jest bardzo popularna.', 'This brand is very popular.', 'Czy znasz tę markę?', 'Do you know this brand?'),
	('Chciałbym zwrócić', 'I''d like to return', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\zwrocic.png', 'Chciałbym zwrócić ten produkt.', 'I''d like to return this product.', 'Czy mogę zwrócić te buty?', 'Can I return these shoes?'),
	('Chciałbym ją wymienić na', 'I would like to exchange it for', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wymienic.png', 'Chciałbym ją wymienić na większy rozmiar.', 'I would like to exchange it for a bigger size.', 'Czy mogę wymienić ten sweter na inny kolor?', 'Can I exchange this sweater for a different color?'),
	('centrum handlowe', 'shopping centre', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\centre.png', 'Spotkajmy się w centrum handlowym.', 'Let''s meet at the shopping centre.', 'Czy lubisz chodzić do centrum handlowego?', 'Do you like going to the shopping centre?'),
	('targować się', 'haggle', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\targowac.png', 'Lubię targować się na bazarze.', 'I like to haggle at the market.', 'Czy umiesz się targować?', 'Can you haggle?'),
	('sklep osiedlowy', 'convenience store', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\sklep.png', 'Zaraz obok jest sklep osiedlowy.', 'There is a convenience store right next door.', 'Czy jest tu gdzieś sklep osiedlowy?', 'Is there a convenience store nearby?'),
	('po termnie ważności', 'expired', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\po.png', 'To mleko jest po terminie ważności.', 'This milk is expired.', 'Czy sprawdziłeś, czy te jajka są po terminie ważności?', 'Did you check if these eggs are expired?'),
	('zrobić listę zakupów', 'make a shopping list', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\lista.png', 'Muszę zrobić listę zakupów.', 'I need to make a shopping list.', 'Czy zrobiłeś listę zakupów?', 'Did you make a shopping list?'),
	('kasa samoobsługowa', 'self-service checkout', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\kasa.png', 'Skorzystaj z kasy samoobsługowej.', 'Use the self-service checkout.', 'Czy umiesz obsługiwać kasę samoobsługową?', 'Do you know how to use the self-service checkout?'),
	('stać w kolejce', 'queue', 8, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\stac.png', 'Muszę stać w kolejce do kasy.', 'I have to queue at the checkout.', 'Czy nie lubisz stać w kolejce?', 'Don''t you like to queue?'),
	('rozmiarówka', 'sizing', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\rozm.png', 'Ta rozmiarówka jest zawyżona.', 'This sizing runs large.', 'Czy ta marka ma normalną rozmiarówkę?', 'Does this brand have standard sizing?'),
	('odpowiednik', 'equivalent', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\rowny.png', 'To jest odpowiednik tamtego produktu.', 'This is the equivalent of that product.', 'Czy mogę dostać odpowiednik tej części?', 'Can I get the equivalent of this part?'),
	('kod kreskowy', 'bar code', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\bar.png', 'Skanuj kod kreskowy.', 'Scan the bar code.', 'Czy mogę zobaczyć kod kreskowy?', 'Can I see the bar code?'),
	('przymierzalnia', 'changing room', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\room.png', 'Idź do przymierzalni.', 'Go to the changing room.', 'Czy mogę użyć przymierzalni?', 'Can I use the changing room?'),
	('wyprzedaż/ promocja', 'sale', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\sale.png', 'Jest wyprzedaż na zimowe ubrania.', 'There is a sale on winter clothes.', 'Czy wyprzedaż jeszcze trwa?', 'Is the sale still on?'),
	('rabat', 'discount', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\sale.png', 'Mam kupon na rabat.', 'I have a discount coupon.', 'Czy mogę dostać rabat?', 'Can I get a discount?'),
	('hurtowy', 'wholesale', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\hurt.png', 'Kupuję towar hurtowy.', 'I buy wholesale goods.', 'Czy prowadzicie sprzedaż hurtową?', 'Do you sell wholesale?'),
	('detaliczny', 'retail', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\det.png', 'Jestem detalicznym klientem.', 'I am a retail customer.', 'Czy to jest sprzedaż detaliczna?', 'Is this retail sale?'),
	('reklamacja', 'complaint', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\rek.png', 'Złożyłem reklamację na ten produkt.', 'I filed a complaint about this product.', 'Czy mogę złożyć reklamację?', 'Can I file a complaint?'),
	('wadliwy towar', 'faulty goods', 9, 'C:\\Users\\trapi\\Desktop\\Kurs\\Icons6\\wadliwy.png', 'Otrzymałem wadliwy towar.', 'I received faulty goods.', 'Czy mogę zwrócić wadliwy towar?', 'Can I return faulty goods?');
    
SELECT *FROM chapter_six;

DROP TABLE chapter_six;