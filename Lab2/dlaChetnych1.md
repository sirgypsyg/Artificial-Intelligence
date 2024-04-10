Zadanie 1

Stałe indywiduowe:
    Markus
    Cezar

Predykaty:
    czlowiek(x)
    pompejczyk(x)
    rzymianin(x)
    wladca(x)
    lojalny(x, y)
    nienawidzi(x, y)
    zabojca(x, y)

Stwierdzenia:
    1.czlowiek(markus)
    2.pompejczyk(markus)
    3.∀x (pompejczyk(x) → rzymianin(x))
    4.wladca(Cezar)
    5.∀x (rzymianin(x) → (loyalny(x, Cezar) ∨ nienawidzi(x, Cezar)))
    6.∀x ∃y loyalny(x, y)
    7.∀x ∀y (czlowiek(x) ∧ wladca(y) ∧ zabojca(x, y) → ¬loyalny(x, y))
    8.zabojca(Markus, Cezar)


b) 
    -Jeśli markus był czlowiekiem(1) i zabójcą(8), a cezar władcą(4) to markus musiał być nielojalny(7).
    Wynika to ze Stwierdzenia (7) ≡ ¬loyalny(x, y).
    

c) Przekształć skonstruowane przez siebie formuły do postaci koniunkcyjnej
normalnej (CNF).

    1. czlowiek(markus)
    2. pompejczyk(markus)
    3. (¬pompejczyk(x) ∨ rzymianin(x))
    4. wladca(Cezar)
    5. (¬rzymianin(x) ∨ loyalny(x,y) ∨ nienawidzi(x,y))
    6. loyalny(x, y)
    7. ¬czlowiek(x)  ∨  ¬wladca(y)  ∨ ¬zabojca(x, y)  ∨ ¬lojalny(x, y)
    8. zabojca(Markus, Cezar)

d) Przeprowadź dowód z punktu b metodą rezolucji.
    negujemy ¬loyalny(x, y).
    loyalny(x, y).

    ¬czlowiek(x)  ∨  ¬wladca(y)  ∨ ¬zabojca(x, y)  ∨ ¬lojalny(x, y)
    8.zabojca(Markus, Cezar)//

    ¬czlowiek(x)  ∨  ¬wladca(y) ∨ ¬lojalny(x, y)
    6. loyalny(x, y)

    ¬czlowiek(x)  ∨  ¬wladca(y)
    4. wladca(Cezar)

    ¬czlowiek(x)
    czlowiek(markus)

    ----
    Wyrażenie całkowicie się skróciło co oznacza że Wyrażenie było prawdziwe.


***Zadanie 2***
a) Wyraź następujące zdania w języku logiki predykatów:
    1. ∀x (pożywienie(x)  → lubi(jan,x))
    2. pożywienie(Jabłka).
    3. pożywienie(Kurczak).
    4. ∀x ∀y (zje(x, y) ∧ ¬zabija(y, x) → pożywienie(y)).
    5. je(adam, orzeszki) ∧ zyje(adam).
    6. ∀x je((adam, x) → je(Basia, x)).

b) Przekształć skonstruowane przez siebie formuły do postaci koniunkcyjnej
normalnej (CNF).
    1. ¬pożywienie(x) ∨ lubi(jan,x)
    2. pożywienie(Jabłka).
    3. pożywienie(Kurczak).
    4. ¬zje(x, y) ∨ zabija(y, x) ∨ pożywienie(y)
    5.
        a) zyje(adam).
        b) zje(adam, orzeszki).
    6. ¬zje(adam, x) ∨ zje(Basia, x).

c) Udowodnij metodą rezolucji (ewentualnie uzupełniając stworzone poprzednio
formuły), że Jan lubi orzeszki.
    negujemy lubi(jan, orzeszki).
    ¬lubi(jan, orzeszki).

    Potrzebujmey dodatkowej formuły , że jeśli coś zabija to znaczy że ta osoba nie żyje.
    7. ∀x ∀y(zabija(y,x) → ¬zyje(x)) 
    7. ¬zabija(y,x) ∨ ¬zyje(x)     -- w CNF.

8. ¬zje(x, y) ∨ ¬zyje(x) ∨ pożywienie(y) - (7.) i (4.). 
9. pożywienie(orzeszki) - (8.) i (5.)      
10. lubi(Jan,orzeszki) - (9.) i (1.) 
11. [] - (10.) i (¬lubi(jan, orzeszki))


d) Spróbuj (metodą rezolucji) odpowiedzieć na pytanie, jakie pożywienie je Basia.
    
    Metoda rezolucji słuzy dowodzeniu więc musimy założyc jakiś fakt.
    Jedyną informacją jaką mamy podaną jest to, że Basia je to samo co adam.
    O adamie wiemy tyle, że je orzechy i żyje, więc jedynie możemy sprawdzić
    czy Basia lubi orzechy. Więc zakładamy dowód:
    zje(Basia, orzeszki) , który negujemy ¬zje(Basia, orzeszki)
 
    zje(Basia, orzeszki) //rezolucja z 5b. i 6